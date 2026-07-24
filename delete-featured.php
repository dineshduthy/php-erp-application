<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$id=(int)$_GET['id'];

$conn->query("DELETE FROM featured WHERE featured_id=$id");

header("Location:featured.php");
exit();
?>
