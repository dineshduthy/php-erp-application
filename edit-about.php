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

$result=$conn->query("SELECT * FROM about WHERE abt_id=$id");

if($result->num_rows==0)
{
    header("Location:about.php");
    exit();
}

$row=$result->fetch_assoc();

if(isset($_POST['update']))
{
    $small=$_POST['abt_txt_small'];
    $large=$_POST['abt_txt_large'];
    $mission=$_POST['mission_vision'];
    $head=$_POST['abt_head'];

    $image=$row['abt_img'];

    if($_FILES['abt_img']['name']!="")
    {
        if(file_exists("uploads/".$image))
        {
            unlink("uploads/".$image);
        }

        $image=time()."_".$_FILES['abt_img']['name'];

        move_uploaded_file(
            $_FILES['abt_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("UPDATE about
    SET
    abt_txt_small=?,
    abt_txt_large=?,
    mission_vision=?,
    abt_head=?,
    abt_img=?
    WHERE abt_id=?");

    $stmt->bind_param(
        "sssssi",
        $small,
        $large,
        $mission,
        $head,
        $image,
        $id
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

<div class="card-header bg-warning">

<h4>Edit About</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Heading</label>

<input
type="text"
name="abt_head"
value="<?php echo htmlspecialchars($row['abt_head']); ?>"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Small Description</label>

<textarea
name="abt_txt_small"
rows="5"
class="form-control"
required><?php echo htmlspecialchars($row['abt_txt_small']); ?></textarea>

</div>

<div class="mb-3">

<label>Large Description</label>

<textarea
name="abt_txt_large"
rows="8"
class="form-control"
required><?php echo htmlspecialchars($row['abt_txt_large']); ?></textarea>

</div>

<div class="mb-3">

<label>Mission & Vision</label>

<textarea
name="mission_vision"
rows="5"
class="form-control"
required><?php echo htmlspecialchars($row['mission_vision']); ?></textarea>

</div>

<div class="mb-3">

<label>Current Image</label><br>

<?php if($row['abt_img']){ ?>

<img src="uploads/<?php echo $row['abt_img']; ?>" width="120">

<?php } ?>

</div>

<div class="mb-3">

<label>New Image</label>

<input
type="file"
name="abt_img"
class="form-control">

</div>

<button
type="submit"
name="update"
class="btn btn-success">

Update

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
