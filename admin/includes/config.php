<?php
define('DB_SERVER','sql12.freesqldatabase.com');
define('DB_USER','sql12805574');
define('DB_PASS' ,'CYlnqRj8IS');
define('DB_NAME','sql12805574');
define('DB_PORT',3306);
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME,DB_PORT);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>