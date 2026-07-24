<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$id=(int)$_GET['id'];

$result=$conn->query("SELECT banner_img FROM banner WHERE banner_id=$id");

if($result->num_rows>0)
{
    $row=$result->fetch_assoc();

    if($row['banner_img']!="" && file_exists("uploads/".$row['banner_img']))
    {
        unlink("uploads/".$row['banner_img']);
    }
}

$conn->query("DELETE FROM banner WHERE banner_id=$id");

header("Location:banner.php");
exit();
?>
