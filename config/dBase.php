<?php
/**
 * Database configuration
 */
$host  = "localhost";
$user = "root";
$pass = "4914433";
$database = "db_stroyka";

$connection = mysqli_connect($host,$user,$pass,$database);
if(mysqli_connect_errno()){
    trigger_error('Error connection to host '.
        $host,E_USER_ERROR);
    exit();
}

