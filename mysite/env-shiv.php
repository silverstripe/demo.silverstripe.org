<?php
/**
 * Imports SS_* constants into the environment so dotenv can read them.
 *
 * This file is temporary - until SilverStripe Platform supports auto-generation
 * of .env files instead of/as well as _ss_environment.php
 */
if (!file_exists(BASE_PATH . '/.env')) {
	// Define paths to look for _ss_environment in
	$paths = [
		BASE_PATH . '/_ss_environment.php',       // In the project root
		BASE_PATH . '/../_ss_environment.php',    // SSP already deployed
		BASE_PATH . '/../../_ss_environment.php'  // SSP during deployments
	];

	// Find the first environment file that exists
	foreach ($paths as $path) {
		if (file_exists($path) && is_readable($path)) {
			require_once $path;

			// Get the user defined constants that start with SS_
			foreach (get_defined_constants(true)['user'] as $constantName => $constantValue) {
				if (substr($constantName, 0, 3) !== 'SS_') {
					continue;
				}
				// Import into the environment so the first execution will work. You can also
				// write this to a .env file, if required
				putenv(sprintf('%s=%s', $constantName, $constantValue));
			}

			break;
		}
	}
}
unset($path, $paths, $constantName, $constantValue);
