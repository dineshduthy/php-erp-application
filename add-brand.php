<?php
session_start();

if(!isset($_SESSION['user']))
{
header("Location:index.php");
exit();
}

require_once "includes/db.php";

if(isset($_POST['save']))
{

$name=$_POST['brands_name'];
$route=$_POST['rout'];

$image="";

if($_FILES['brands_img']['error']==0)
{

$image=time()."_".basename($_FILES['brands_img']['name']);

move_uploaded_file(
$_FILES['brands_img']['tmp_name'],
"uploads/".$image
);

}

$stmt=$conn->prepare("INSERT INTO brands(brands_name,brands_img,rout) VALUES(?,?,?)");

$stmt->bind_param("sss",$name,$image,$route);

$stmt->execute();

header("Location:brands.php");

exit();

}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Add Brand</h2>

<div class="card">

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Brand Name</label>

<input
type="text"
name="brands_name"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Route</label>

<input
type="text"
name="rout"
class="form-control">

</div>

<div class="mb-3">

<label>Brand Image</label>

<input
type="file"
name="brands_img"
class="form-control">

</div>

<button
class="btn btn-success"
name="save">

Save Brand

</button>

<a
href="brands.php"
class="btn btn-secondary">

Back

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
