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

$cats=$conn->query("SELECT * FROM category ORDER BY category_name");

if(isset($_POST['save']))
{
    $title=$_POST['projects_txt'];
    $small=$_POST['projects_small'];
    $large=$_POST['projects_large'];
    $category=$_POST['category_id'];

    $image="";

    if($_FILES['projects_img']['name']!="")
    {
        $image=time()."_".$_FILES['projects_img']['name'];

        move_uploaded_file(
            $_FILES['projects_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("INSERT INTO projects(projects_txt,projects_small,projects_large,projects_img,category_id)
    VALUES(?,?,?,?,?)");

    $stmt->bind_param(
        "ssssi",
        $title,
        $small,
        $large,
        $image,
        $category
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

<div class="card-header bg-primary text-white">

<h4>Add Project</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>Project Title</label>

<input type="text" name="projects_txt" class="form-control" required>

</div>

<div class="mb-3">

<label>Small Description</label>

<textarea name="projects_small" class="form-control" rows="4"></textarea>

</div>

<div class="mb-3">

<label>Large Description</label>

<textarea name="projects_large" class="form-control" rows="6"></textarea>

</div>

<div class="mb-3">

<label>Category</label>

<select name="category_id" class="form-control">

<?php while($c=$cats->fetch_assoc()){ ?>

<option value="<?php echo $c['category_id'];?>">

<?php echo $c['category_name'];?>

</option>

<?php } ?>

</select>

</div>

<div class="mb-3">

<label>Project Image</label>

<input type="file" name="projects_img" class="form-control" required>

</div>

<button type="submit" name="save" class="btn btn-success">

Save

</button>

<a href="projects.php" class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
