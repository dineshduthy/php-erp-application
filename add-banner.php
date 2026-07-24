<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";
include "includes/header.php";
include "includes/sidebar.php";

if(isset($_POST['save']))
{
    $caption1=$_POST['banner_caption1'];
    $caption2=$_POST['banner_caption2'];

    $image="";

    if($_FILES['banner_img']['name']!="")
    {
        $image=time()."_".$_FILES['banner_img']['name'];

        move_uploaded_file(
            $_FILES['banner_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("INSERT INTO banner(banner_caption1,banner_caption2,banner_img)
    VALUES(?,?,?)");

    $stmt->bind_param(
        "sss",
        $caption1,
        $caption2,
        $image
    );

    if($stmt->execute())
    {
        header("Location:banner.php");
        exit();
    }
}
?>

<div class="content">

<div class="container-fluid">

<div class="card">

<div class="card-header bg-primary text-white">

<h4>Add Banner</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Banner Caption 1</label>

<input
type="text"
name="banner_caption1"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Banner Caption 2</label>

<input
type="text"
name="banner_caption2"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Banner Image</label>

<input
type="file"
name="banner_img"
class="form-control"
required>

</div>

<button
type="submit"
name="save"
class="btn btn-success">

Save

</button>

<a href="banner.php" class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
