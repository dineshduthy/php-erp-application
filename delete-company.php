<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$id = intval($_GET['id']);

$conn->query("DELETE FROM company WHERE company_id=$id");

header("Location:company.php");
exit();
?>
