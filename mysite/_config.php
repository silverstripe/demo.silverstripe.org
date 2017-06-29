<?php

use SilverStripe\Control\Director;

require_once __DIR__ . '/env-shiv.php';

global $project;
$project = 'mysite';

// if (defined('SS_CANONICAL_DOMAIN')) {
// 	$allowedDomains = array(SS_CANONICAL_DOMAIN);
// 	if (defined('SS_OTHER_ALLOWED_DOMAINS')) {
// 		$allowedDomains = array_merge($allowedDomains, preg_split("/ *, */", trim(SS_OTHER_ALLOWED_DOMAINS)));
// 	}
// 	// Don't worry redirecting is HTTP_HOST is blank; we're probably accessing from a shell script or soemthing
// 	if (!empty($_SERVER['HTTP_HOST']) && !in_array($_SERVER['HTTP_HOST'], $allowedDomains) && isset($_SERVER['REQUEST_URI'])) {
// 		header($_SERVER['SERVER_PROTOCOL'] . " 301 Moved Permanently");
// 		header('Location: '.Director::protocol() . SS_CANONICAL_DOMAIN . $_SERVER['REQUEST_URI'], true, 301);
// 		exit(0);
// 	}
// }

// if (defined('SS_HAS_SSL') && SS_HAS_SSL && Director::is_https() == false) {
// 	Director::forceSSL();
// }
