<?php

session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

if(isset($_GET['id']))
{

$id=intval($_GET['id']);

$stmt=$conn->prepare("SELECT products_img FROM products WHERE products_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

$result=$stmt->get_result();

if($row=$result->fetch_assoc())
{
    if($row['products_img']!="" && file_exists("uploads/".$row['products_img']))
    {
        unlink("uploads/".$row['products_img']);
    }
}

$stmt=$conn->prepare("DELETE FROM products WHERE products_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

}

header("Location:products.php");
exit();

?>
