<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$id=intval($_GET['id']);

$result=$conn->query("SELECT news_img FROM news WHERE news_id=$id");

if($result->num_rows>0)
{
    $row=$result->fetch_assoc();

    if($row['news_img']!="")
    {
        if(file_exists("uploads/".$row['news_img']))
        {
            unlink("uploads/".$row['news_img']);
        }
    }

    $conn->query("DELETE FROM news WHERE news_id=$id");
}

header("Location:news.php");
exit();
?>
