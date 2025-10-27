<?php
declare(strict_types=1);

session_start();
$secure = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off');
session_set_cookie_params([
    'lifetime' => 0,
    'path' => '/',
    'domain' => $_SERVER['HTTP_HOST'] ?? '',
    'secure' => $secure,
    'httponly' => true,
    'samesite' => 'Lax'
]);

// Database 
$dbHost = '127.0.0.1';
$dbName = 'softengdb';
$dbUser = 'louise';
$dbPass = '123456';
$dsn = "mysql:host=$dbHost;dbname=$dbName;charset=utf8mb4";

try {
    $pdo = new PDO($dsn, $dbUser, $dbPass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ]);
} catch (Exception $e) {
    http_response_code(500);
    echo 'Database connection failed.';
    exit;
}

?>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
</head>
<body>

</body>
</html>
