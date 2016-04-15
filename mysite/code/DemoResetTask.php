<?php

class DemoResetTask extends BuildTask {
	function run($request) {
		global $databaseConfig;

		$CLI_dbuser = escapeshellarg($databaseConfig['username']);
		$CLI_dbpassArg = $databaseConfig['password'] ? escapeshellarg("-p" . $databaseConfig['password']) : '';
		$CLI_database = escapeshellarg($databaseConfig['database']);
		$CLI_server = escapeshellarg($databaseConfig['server']);

		$mysqlBin = null;
		$mysqls = array("/opt/local/lib/mysql5/bin/mysql", "/usr/bin/mysql", "/usr/local/bin/mysql");
		foreach($mysqls as $item) if(file_exists($item)) {
			$mysqlBin = $item;
			break;
		}

		chdir(BASE_PATH);

		if($mysqlBin) {
			echo "Resetting database...\n<br>";
			echo "<pre>";
			echo htmlentities(`nice -n 5 cat .reset/db_reset.sql | $mysqlBin -h $CLI_server -u $CLI_dbuser $CLI_dbpassArg -D $CLI_database &> /dev/stdout`);
			echo "</pre>";
		} else {
			throw new LogicException("Can't find MySQL binary");
		}
		echo "Resetting assets...\n<br>";
		echo "<pre>";
		echo htmlentities(`nice -n 5 rsync -av --delete .reset/assets_reset/ assets &> /dev/stdout`);
		echo "</pre>";
		echo "Running dev/build...\n<br>";
		echo "<pre>";
		echo htmlentities(`nice -n 5 php ./framework/cli-script.php dev/build`);
		echo "</pre>";
		echo "Done!\n";
	}
}
