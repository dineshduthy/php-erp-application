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

$id=(int)$_GET['id'];

$result=$conn->query("SELECT * FROM banner WHERE banner_id=$id");

if($result->num_rows==0)
{
    header("Location:banner.php");
    exit();
}

$row=$result->fetch_assoc();

if(isset($_POST['update']))
{
    $caption1=$_POST['banner_caption1'];
    $caption2=$_POST['banner_caption2'];

    $image=$row['banner_img'];

    if($_FILES['banner_img']['name']!="")
    {
        if($image!="" && file_exists("uploads/".$image))
        {
            unlink("uploads/".$image);
        }

        $image=time()."_".$_FILES['banner_img']['name'];

        move_uploaded_file(
            $_FILES['banner_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("UPDATE banner
    SET
    banner_caption1=?,
    banner_caption2=?,
    banner_img=?
    WHERE banner_id=?");

    $stmt->bind_param(
        "sssi",
        $caption1,
        $caption2,
        $image,
        $id
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

<div class="card-header bg-warning">

<h4>Edit Banner</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Banner Caption 1</label>

<input
type="text"
name="banner_caption1"
value="<?php echo htmlspecialchars($row['banner_caption1']); ?>"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Banner Caption 2</label>

<input
type="text"
name="banner_caption2"
value="<?php echo htmlspecialchars($row['banner_caption2']); ?>"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Current Image</label><br>

<?php if($row['banner_img']) { ?>

<img
src="uploads/<?php echo $row['banner_img']; ?>"
width="200">

<?php } ?>

</div>

<div class="mb-3">

<label>New Banner Image</label>

<input
type="file"
name="banner_img"
class="form-control">

</div>

<button
type="submit"
name="update"
class="btn btn-success">

Update

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
