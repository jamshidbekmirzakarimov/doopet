<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/doopet/admin/');
define('HTTP_CATALOG', 'http://localhost/doopet/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/doopet/admin/');
define('HTTPS_CATALOG', 'http://localhost/doopet/');

// DIR
define('DIR_APPLICATION', 'C:/xampp/htdocs/doopet/admin/');
define('DIR_SYSTEM', 'C:/xampp/htdocs/doopet/system/');
define('DIR_IMAGE', 'C:/xampp/htdocs/doopet/image/');
define('DIR_STORAGE', 'C:/xampp/storage/');
define('DIR_CATALOG', 'C:/xampp/htdocs/doopet/catalog/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/template/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'doopet');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');

// OpenCart API
define('OPENCART_SERVER', 'https://www.opencart.com/');

error_reporting(0);