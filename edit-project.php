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

$project=$conn->query("SELECT * FROM projects WHERE projects_id=$id");

if($project->num_rows==0)
{
    header("Location:projects.php");
    exit();
}

$row=$project->fetch_assoc();

$cats=$conn->query("SELECT * FROM category ORDER BY category_name");

if(isset($_POST['update']))
{
    $title=$_POST['projects_txt'];
    $small=$_POST['projects_small'];
    $large=$_POST['projects_large'];
    $category=$_POST['category_id'];

    $image=$row['projects_img'];

    if($_FILES['projects_img']['name']!="")
    {
        if($image!="" && file_exists("uploads/".$image))
        {
            unlink("uploads/".$image);
        }

        $image=time()."_".$_FILES['projects_img']['name'];

        move_uploaded_file(
            $_FILES['projects_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("UPDATE projects
    SET
    projects_txt=?,
    projects_small=?,
    projects_large=?,
    projects_img=?,
    category_id=?
    WHERE projects_id=?");

    $stmt->bind_param(
        "ssssii",
        $title,
        $small,
        $large,
        $image,
        $category,
        $id
    );

    if($stmt->execute())
    {
        header("Location:projects.php");
        exit();
    }
}
?>

<div class="content">

<div class="container-fluid">

<div class="card">

<div class="card-header bg-warning">

<h4>Edit Project</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Project Title</label>

<input
type="text"
name="projects_txt"
value="<?php echo htmlspecialchars($row['projects_txt']); ?>"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Small Description</label>

<textarea
name="projects_small"
rows="4"
class="form-control"><?php echo htmlspecialchars($row['projects_small']); ?></textarea>

</div>

<div class="mb-3">

<label>Large Description</label>

<textarea
name="projects_large"
rows="6"
class="form-control"><?php echo htmlspecialchars($row['projects_large']); ?></textarea>

</div>

<div class="mb-3">

<label>Category</label>

<select
name="category_id"
class="form-control">

<?php while($c=$cats->fetch_assoc()){ ?>

<option
value="<?php echo $c['category_id'];?>"
<?php if($row['category_id']==$c['category_id']) echo "selected"; ?>>

<?php echo $c['category_name'];?>

</option>

<?php } ?>

</select>

</div>

<div class="mb-3">

<label>Current Image</label><br>

<?php if($row['projects_img']){ ?>

<img
src="uploads/<?php echo $row['projects_img'];?>"
width="150">

<?php } ?>

</div>

<div class="mb-3">

<label>New Image</label>

<input
type="file"
name="projects_img"
class="form-control">

</div>

<button
type="submit"
name="update"
class="btn btn-success">

Update

</button>

<a
href="projects.php"
class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
