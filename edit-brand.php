<?php
session_start();

if(!isset($_SESSION['user']))
{
header("Location:index.php");
exit();
}

require_once "includes/db.php";

$id=$_GET['id'];

$stmt=$conn->prepare("SELECT * FROM brands WHERE brands_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

$result=$stmt->get_result();

$brand=$result->fetch_assoc();

if(isset($_POST['update']))
{

$name=$_POST['brands_name'];
$route=$_POST['rout'];

$image=$brand['brands_img'];

if($_FILES['brands_img']['error']==0)
{

if($image!="" && file_exists("uploads/".$image))
{
unlink("uploads/".$image);
}

$image=time()."_".basename($_FILES['brands_img']['name']);

move_uploaded_file(
$_FILES['brands_img']['tmp_name'],
"uploads/".$image
);

}

$stmt=$conn->prepare("UPDATE brands SET brands_name=?,brands_img=?,rout=? WHERE brands_id=?");

$stmt->bind_param("sssi",$name,$image,$route,$id);

$stmt->execute();

header("Location:brands.php");

exit();

}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Edit Brand</h2>

<div class="card">

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Brand Name</label>

<input
type="text"
name="brands_name"
class="form-control"
value="<?php echo htmlspecialchars($brand['brands_name']); ?>"
required>

</div>

<div class="mb-3">

<label>Route</label>

<input
type="text"
name="rout"
class="form-control"
value="<?php echo htmlspecialchars($brand['rout']); ?>">

</div>

<div class="mb-3">

<label>Current Image</label>

<br>

<?php

if($brand['brands_img']!="")
{

?>

<img
src="uploads/<?php echo $brand['brands_img'];?>"
width="120">

<?php

}

?>

<input
type="file"
name="brands_img"
class="form-control mt-2">

</div>

<button
class="btn btn-success"
name="update">

Update Brand

</button>

<a
href="brands.php"
class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
