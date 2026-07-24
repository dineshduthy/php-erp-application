<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$id=(int)$_GET['id'];

$result=$conn->query("SELECT projects_img FROM projects WHERE projects_id=$id");

if($result->num_rows>0)
{
    $row=$result->fetch_assoc();

    if($row['projects_img']!="" && file_exists("uploads/".$row['projects_img']))
    {
        unlink("uploads/".$row['projects_img']);
    }
}

$conn->query("DELETE FROM projects WHERE projects_id=$id");

header("Location:projects.php");
exit();
?>
