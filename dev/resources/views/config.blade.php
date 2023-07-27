<?php

$server = "localhost";
$username = "root";
$password = "";
$database = "hotel";

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$conn = mysqli_connect($server, $username, $password, $database);

if (!$conn) {
    die("<script>alert('connection Failed.')</script>");
}
// else{
//     echo "<script>alert('connection successfully.')</script>";
// }
