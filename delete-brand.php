<?php

session_start();

if(!isset($_SESSION['user']))
{
header("Location:index.php");
exit();
}

require_once "includes/db.php";

$id=intval($_GET['id']);

$stmt=$conn->prepare("SELECT brands_img FROM brands WHERE brands_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

$result=$stmt->get_result();

if($row=$result->fetch_assoc())
{

if($row['brands_img']!="" && file_exists("uploads/".$row['brands_img']))
{

unlink("uploads/".$row['brands_img']);

}

}

$stmt=$conn->prepare("DELETE FROM brands WHERE brands_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

header("Location:brands.php");
exit();

?>
