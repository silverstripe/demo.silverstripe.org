<?php

use SilverStripe\Dev\BuildTask;
use SilverStripe\ORM\DB;

class DemoResetTask extends BuildTask
{
    public function run($request)
    {
        $databaseConfig = DB::getConfig();

        $CLI_dbuser = escapeshellarg($databaseConfig['username']);
        $CLI_dbpassArg = $databaseConfig['password'] ? escapeshellarg("-p" . $databaseConfig['password']) : '';
        $CLI_database = escapeshellarg($databaseConfig['database']);
        $CLI_server = escapeshellarg($databaseConfig['server']);

        // Find bin paths
        $phpBin = $this->getBinPath('php');
        $mysqlBin = $this->getBinPath('mysql');

        chdir(BASE_PATH);


        echo "Resetting database...\n<br>";
        echo "<pre>";
        echo htmlentities(`nice -n 5 cat .reset/db_reset.sql | $mysqlBin -h $CLI_server -u $CLI_dbuser $CLI_dbpassArg -D $CLI_database &> /dev/stdout`);
        echo "</pre>";
        echo "Resetting assets...\n<br>";
        echo "<pre>";
        echo htmlentities(`nice -n 5 rsync -av --delete .reset/assets_reset/ assets &> /dev/stdout`);
        echo "</pre>";
        echo "Running dev/build...\n<br>";
        echo "<pre>";
        echo htmlentities(`nice -n 5 $phpBin ./vendor/silverstripe/framework/cli-script.php dev/build`);
        echo "</pre>";
        echo "Migrating File records...\n<br>";
        echo htmlentities(`nice -n 5 $phpBin ./vendor/silverstripe/framework/cli-script.php dev/tasks/MigrateFileTask`);
        echo "Done!\n";
    }

    /**
     * Get path to given bin
     *
     * @param string $bin
     * @return string
     * @throws Exception
     */
    protected function getBinPath($bin)
    {
        $directories = [
            "/opt/local/lib/mysql5/bin/",
            "/usr/local/bin/",
            "/usr/bin/",
            "/Applications/MAMP/Library/bin/"
        ];
        foreach ($directories as $directory) {
            $candidate = $directory . $bin;
            if (file_exists($candidate)) {
                return $candidate;
            }
        }

        // Use `which`
        $path = exec("which $bin 2>/dev/null");
        if ($path) {
            return $path;
        }

        throw new Exception("Could not find bin path for command $bin");
    }
}
