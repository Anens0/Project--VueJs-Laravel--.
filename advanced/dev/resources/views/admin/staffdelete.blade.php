<?php

include '../config.blade.php';

$id = $_GET['id'];

$roomdeletesql = "DELETE FROM staff WHERE id = $id";

$result = mysqli_query($conn, $roomdeletesql);

header("Location:staff.blade.php");

?>