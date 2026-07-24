<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$id=(int)$_GET['id'];

$result=$conn->query("SELECT abt_img FROM about WHERE abt_id=$id");

if($result->num_rows>0)
{
    $row=$result->fetch_assoc();

    if($row['abt_img']!="" && file_exists("uploads/".$row['abt_img']))
    {
        unlink("uploads/".$row['abt_img']);
    }
}

$conn->query("DELETE FROM about WHERE abt_id=$id");

header("Location:about.php");
exit();
?>
