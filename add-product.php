<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location: index.php");
    exit();
}

require_once "includes/db.php";

$message = "";

if(isset($_POST['save']))
{
    $category_id = $_POST['category_id'];
    $products_heading = $_POST['products_heading'];
    $products_disc = $_POST['products_disc'];
    $products_brand = $_POST['products_brand'];
    $address = $_POST['address'];
    $address1 = $_POST['address1'];
    $address2 = $_POST['address2'];
    $products_availability = $_POST['products_availability'];
    $map = $_POST['map'];

    $imageName = "";

    if(isset($_FILES['products_img']) && $_FILES['products_img']['error']==0)
    {
        $imageName = time()."_".basename($_FILES['products_img']['name']);
        move_uploaded_file(
            $_FILES['products_img']['tmp_name'],
            "uploads/".$imageName
        );
    }

    $stmt = $conn->prepare("
    INSERT INTO products
    (
        category_id,
        products_heading,
        products_disc,
        products_brand,
        address,
        address1,
        address2,
        products_availability,
        products_img,
        map
    )
    VALUES
    (?,?,?,?,?,?,?,?,?,?)
    ");

    $stmt->bind_param(
        "isisssssss",
        $category_id,
        $products_heading,
        $products_disc,
        $products_brand,
        $address,
        $address1,
        $address2,
        $products_availability,
        $imageName,
        $map
    );

    if($stmt->execute())
    {
        header("Location: products.php");
        exit();
    }
    else
    {
        $message="Error : ".$conn->error;
    }
}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Add Product</h2>

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
required>

</div>

<div class="col-md-6 mb-3">

<label>Brand ID</label>

<input
type="number"
name="products_brand"
class="form-control"
required>

</div>

<div class="col-md-12 mb-3">

<label>Product Heading</label>

<input
type="text"
name="products_heading"
class="form-control"
required>

</div>

<div class="col-md-12 mb-3">

<label>Description</label>

<textarea
name="products_disc"
rows="5"
class="form-control"
required></textarea>

</div>

<div class="col-md-4 mb-3">

<label>Address</label>

<textarea
name="address"
class="form-control"></textarea>

</div>

<div class="col-md-4 mb-3">

<label>Address 1</label>

<textarea
name="address1"
class="form-control"></textarea>

</div>

<div class="col-md-4 mb-3">

<label>Address 2</label>

<textarea
name="address2"
class="form-control"></textarea>

</div>

<div class="col-md-6 mb-3">

<label>Availability</label>

<input
type="text"
name="products_availability"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Product Image</label>

<input
type="file"
name="products_img"
class="form-control">

</div>

<div class="col-md-12 mb-3">

<label>Google Map</label>

<textarea
name="map"
class="form-control"></textarea>

</div>

<div class="col-md-12">

<button
type="submit"
name="save"
class="btn btn-success">

Save Product

</button>

<a
href="products.php"
class="btn btn-secondary">

Back

</a>

</div>

</div>

</div>

</form>

</div>

</div>

<?php
include "includes/footer.php";
?>
