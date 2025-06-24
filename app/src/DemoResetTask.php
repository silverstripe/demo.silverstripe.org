<?php

use SilverStripe\Core\Path;
use SilverStripe\Dev\BuildTask;
use SilverStripe\PolyExecution\PolyOutput;
use SilverStripe\ORM\DB;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Process\Process;

class DemoResetTask extends BuildTask
{
    protected static $defaultName = 'app:demo-reset';

    protected static $defaultDescription = 'Resets the demo database and assets';

    private static bool $can_run_in_cli = true;

    private static bool $can_run_in_browser = false;

    private PolyOutput $output;

    /**
     * Executes the demo reset task.
     * This method orchestrates the full reset process, including resetting the
     * database, assets, and running a dev build.
     */
    public function execute(InputInterface $input, PolyOutput $output): int
    {
        $this->output = $output;
        $binaries = ['mysql', 'rsync', 'nice'];
        foreach ($binaries as $binary) {
            $process = new Process(['which', $binary]);
            $process->run();
            if (!$process->isSuccessful()) {
                return $this->error("Required binary '$binary' not found");
            }
        }
        $methods = ['resetDBSql', 'resetAssets', 'runDevBuild'];
        foreach ($methods as $method) {
            $exitCode = call_user_func([$this, $method]);
            if ($exitCode !== Command::SUCCESS) {
                return $exitCode;
            }
        }
        return Command::SUCCESS;
    }

    /**
     * Resets the database using a SQL dump file.
     * It reads the SQL content from a predefined path and pipes it into the MySQL client.
     */
    private function resetDbSql(): int
    {
        $config = DB::getConfig();
        $sqlPath = Path::join(BASE_PATH, '.reset/db_reset.sql');
        if (!file_exists($sqlPath)) {
            return $this->error("Database reset SQL file not found: {$sqlPath}");
        }
        $command = [
            'mysql',
            "-h{$config['server']}",
            "-u{$config['username']}",
            "-D{$config['database']}",
        ];
        if ($config['password']) {
            $command[] = "-p{$config['password']}";
        }
        $sqlContent = file_get_contents($sqlPath);
        return $this->runCommand('Reset DB SQL', $command, $sqlContent);
    }

    /**
     * Resets the assets directory by synchronizing it with a clean set of assets.
     * It uses rsync to copy files from a source directory to the public assets directory,
     * deleting extra files in the destination.
     */
    private function resetAssets(): int
    {
        $sourceDir = Path::join(BASE_PATH, '.reset/assets_reset');
        $targetDir = Path::join(BASE_PATH, '/public/assets');
        if (!is_dir($sourceDir)) {
            return $this->error("Source assets directory not found: $sourceDir");
        }
        if (!is_dir($targetDir) && !mkdir($targetDir, 0777, true)) {
            return $this->error("Could not create target assets directory: $targetDir");
        }
        // Delete any modifed files in the target directory
        $files = ['.protected', 'assets'];
        foreach ($files as $file) {
            $path = Path::join($targetDir, $file);
            // Check if the path is a directory, may not be there on initial run
            if (!is_dir($path)) {
                continue;
            }
            $command = ['rm', '-rf', $path];
            $exitCode = $this->runCommand("Delete assets: $file", $command);
            if ($exitCode !== Command::SUCCESS) {
                return $exitCode;
            }
        }
        // Copy all files from the source directory to the target directory
        $files = array_diff(scandir($sourceDir), ['.', '..']);
        foreach ($files as $file) {
            $command = ['rsync', '-av', '--delete', Path::join($sourceDir, $file), $targetDir];
            $exitCode = $this->runCommand("Copy assets: $file", $command);
            if ($exitCode !== Command::SUCCESS) {
                return $exitCode;
            }
        }
        return $this->runCommand('Reset assets', $command);
    }

    /**
     * Runs sake db build with flush
     */
    private function runDevBuild(): int
    {
        $sakePath =  Path::join(BASE_PATH, 'vendor/bin/sake');
        if (!file_exists($sakePath)) {
            return $this->error("sake not found: $sakePath");
        }
        $command = [$sakePath, 'db:build', '-f'];
        return $this->runCommand('DB build flush', $command);
    }

    /**
     * Executes a given shell command and outputs its progress and results.
     * It also sets a lower priority for the command using 'nice'.
     */
    private function runCommand(string $description, array $command, string $processInput = ''): int
    {
        $this->writeln("Executing $description...");
        // use nice to set priority
        $command = array_merge(['nice', '-n', '5'], $command);
        $process = new Process($command);
        $process->setWorkingDirectory(BASE_PATH);
        if ($processInput) {
            $process->setInput($processInput);
        }
        $process->run(function ($type, $buffer) {
            if ($type === Process::OUT) {
                $this->write($buffer);
            } else {
                $this->write("<error>{$buffer}</error>");
            }
        });
        if (!$process->isSuccessful()) {
            return $this->error("$description failed. Error: {$process->getErrorOutput()}");
        }
        $this->writeln("<info>$description complete.</info>");
        return COMMAND::SUCCESS;
    }

    /**
     * Displays an error message to the console and returns a failure code.
     */
    private function error(string $message): int
    {
        $this->output->writeln("<error>$message</error>");
        return Command::FAILURE;
    }

    /**
     * Writes a message to the console followed by a new line.
     */
    private function writeln(string $message): void
    {
        $this->output->writeln($message);
    }

    /**
     * Writes a message to the console without a new line.
     */
    private function write(string $message): void
    {
        $this->output->write($message);
    }
}
