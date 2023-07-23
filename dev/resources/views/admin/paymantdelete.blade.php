<?php

include '../config.blade.php';

$id = $_GET['id'];

$deletesql = "DELETE FROM payment WHERE id = $id";

$result = mysqli_query($conn, $deletesql);

header("Location:payment.blade.php");

?>