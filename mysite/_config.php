<?php

global $project;
$project = 'mysite';

global $database;
if(defined('SS_DATABASE_NAME') && SS_DATABASE_NAME) {
	$database = SS_DATABASE_NAME;
} else {
	$database = 'SS_ss3demo';
}

require_once('conf/ConfigureFromEnv.php');

