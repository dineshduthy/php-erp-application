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
    $small=$_POST['abt_txt_small'];
    $large=$_POST['abt_txt_large'];
    $mission=$_POST['mission_vision'];
    $head=$_POST['abt_head'];

    $image="";

    if($_FILES['abt_img']['name']!="")
    {
        $image=time()."_".$_FILES['abt_img']['name'];
        move_uploaded_file(
            $_FILES['abt_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("INSERT INTO about(abt_txt_small,abt_txt_large,mission_vision,abt_head,abt_img)
    VALUES(?,?,?,?,?)");

    $stmt->bind_param(
        "sssss",
        $small,
        $large,
        $mission,
        $head,
        $image
    );

    if($stmt->execute())
    {
        header("Location:about.php");
        exit();
    }
}
?>

<div class="content">

<div class="container-fluid">

<div class="card">

<div class="card-header bg-primary text-white">

<h4>Add About</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Heading</label>

<input
type="text"
name="abt_head"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Small Description</label>

<textarea
name="abt_txt_small"
rows="5"
class="form-control"
required></textarea>

</div>

<div class="mb-3">

<label>Large Description</label>

<textarea
name="abt_txt_large"
rows="8"
class="form-control"
required></textarea>

</div>

<div class="mb-3">

<label>Mission & Vision</label>

<textarea
name="mission_vision"
rows="5"
class="form-control"
required></textarea>

</div>

<div class="mb-3">

<label>Image</label>

<input
type="file"
name="abt_img"
class="form-control"
required>

</div>

<button
type="submit"
name="save"
class="btn btn-success">

Save

</button>

<a href="about.php" class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
