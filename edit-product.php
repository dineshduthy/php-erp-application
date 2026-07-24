<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

if(!isset($_GET['id']))
{
    header("Location:products.php");
    exit();
}

$id = intval($_GET['id']);

$stmt = $conn->prepare("SELECT * FROM products WHERE products_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows==0)
{
    die("Product not found.");
}

$product = $result->fetch_assoc();

$message="";

if(isset($_POST['update']))
{

    $category_id=$_POST['category_id'];
    $products_heading=$_POST['products_heading'];
    $products_disc=$_POST['products_disc'];
    $products_brand=$_POST['products_brand'];
    $address=$_POST['address'];
    $address1=$_POST['address1'];
    $address2=$_POST['address2'];
    $products_availability=$_POST['products_availability'];
    $map=$_POST['map'];

    $imageName=$product['products_img'];

    if(isset($_FILES['products_img']) && $_FILES['products_img']['error']==0)
    {

        if($imageName!="" && file_exists("uploads/".$imageName))
        {
            unlink("uploads/".$imageName);
        }

        $imageName=time()."_".basename($_FILES['products_img']['name']);

        move_uploaded_file(
            $_FILES['products_img']['tmp_name'],
            "uploads/".$imageName
        );

    }

    $stmt=$conn->prepare("

    UPDATE products SET

    category_id=?,
    products_heading=?,
    products_disc=?,
    products_brand=?,
    address=?,
    address1=?,
    address2=?,
    products_availability=?,
    products_img=?,
    map=?

    WHERE products_id=?

    ");

    $stmt->bind_param(

    "isisssssssi",

    $category_id,
    $products_heading,
    $products_disc,
    $products_brand,
    $address,
    $address1,
    $address2,
    $products_availability,
    $imageName,
    $map,
    $id

    );

    if($stmt->execute())
    {
        header("Location:products.php");
        exit();
    }
    else
    {
        $message="Update Failed";
    }

}

include "includes/header.php";
include "includes/sidebar.php";

?>

<div class="content">

<div class="container-fluid">

<h2>Edit Product</h2>

<?php

if($message!="")
{
echo "<div class='alert alert-danger'>$message</div>";
}

?>

<form method="post" enctype="multipart/form-data">

<div class="card p-4">

<div class="row">

<div class="col-md-6 mb-3">

<label>Category ID</label>

<input
type="number"
name="category_id"
class="form-control"
value="<?php echo $product['category_id'];?>"
required>

</div>

<div class="col-md-6 mb-3">

<label>Brand ID</label>

<input
type="number"
name="products_brand"
class="form-control"
value="<?php echo $product['products_brand'];?>"
required>

</div>

<div class="col-md-12 mb-3">

<label>Product Heading</label>

<input
type="text"
name="products_heading"
class="form-control"
value="<?php echo htmlspecialchars($product['products_heading']);?>"
required>

</div>

<div class="col-md-12 mb-3">

<label>Description</label>

<textarea
name="products_disc"
rows="5"
class="form-control"><?php echo htmlspecialchars($product['products_disc']);?></textarea>

</div>

<div class="col-md-4 mb-3">

<label>Address</label>

<textarea
name="address"
class="form-control"><?php echo htmlspecialchars($product['address']);?></textarea>

</div>

<div class="col-md-4 mb-3">

<label>Address 1</label>

<textarea
name="address1"
class="form-control"><?php echo htmlspecialchars($product['address1']);?></textarea>

</div>

<div class="col-md-4 mb-3">

<label>Address 2</label>

<textarea
name="address2"
class="form-control"><?php echo htmlspecialchars($product['address2']);?></textarea>

</div>

<div class="col-md-6 mb-3">

<label>Availability</label>

<input
type="text"
name="products_availability"
class="form-control"
value="<?php echo htmlspecialchars($product['products_availability']);?>">

</div>

<div class="col-md-6 mb-3">

<label>Current Image</label>

<br>

<?php

if($product['products_img']!="")
{

?>

<img
src="uploads/<?php echo $product['products_img'];?>"
width="120">

<?php

}
else
{

echo "No Image";

}

?>

<input
type="file"
name="products_img"
class="form-control mt-2">

</div>

<div class="col-md-12 mb-3">

<label>Google Map</label>

<textarea
name="map"
class="form-control"><?php echo htmlspecialchars($product['map']);?></textarea>

</div>

<div class="col-md-12">

<button
class="btn btn-success"
name="update">

Update Product

</button>

<a
href="products.php"
class="btn btn-secondary">

Cancel

</a>

</div>

</div>

</div>

</form>

</div>

</div>

<?php include "includes/footer.php"; ?>
