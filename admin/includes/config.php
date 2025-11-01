<?php
// Read from environment variables (Render will inject them)
$server = getenv('DB_SERVER') ?: 'sql12.freesqldatabase.com';
$user   = getenv('DB_USER')   ?: 'sql12805574';
$pass   = getenv('DB_PASS')   ?: 'CYlnqRj8IS';
$name   = getenv('DB_NAME')   ?: 'sql12805574';
$port   = getenv('DB_PORT')   ?: 3306;

// Create connection
$con = mysqli_connect($server, $user, $pass, $name, $port);

// Check connection
if (mysqli_connect_errno()) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>
