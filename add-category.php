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
    $category_name = trim($_POST['category_name']);
    $category_disc = trim($_POST['category_disc']);

    $imageName = "";

    if(isset($_FILES['category_img']) && $_FILES['category_img']['error'] == 0)
    {
        $imageName = time() . "_" . basename($_FILES['category_img']['name']);

        move_uploaded_file(
            $_FILES['category_img']['tmp_name'],
            "uploads/" . $imageName
        );
    }

    $stmt = $conn->prepare("INSERT INTO category(category_name,category_disc,category_img) VALUES(?,?,?)");

    $stmt->bind_param(
        "sss",
        $category_name,
        $category_disc,
        $imageName
    );

    if($stmt->execute())
    {
        header("Location: categories.php");
        exit();
    }
    else
    {
        $message = "Failed to save category.";
    }
}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Add Category</h2>

<?php
if($message!="")
{
?>
<div class="alert alert-danger">
<?php echo $message; ?>
</div>
<?php
}
?>

<div class="card">

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label class="form-label">

Category Name

</label>

<input
type="text"
name="category_name"
class="form-control"
required>

</div>

<div class="mb-3">

<label class="form-label">

Category Description

</label>

<textarea
name="category_disc"
rows="5"
class="form-control"
required></textarea>

</div>

<div class="mb-3">

<label class="form-label">

Category Image

</label>

<input
type="file"
name="category_img"
class="form-control"
accept="image/*">

</div>

<button
type="submit"
name="save"
class="btn btn-success">

<i class="fa fa-save"></i>

Save Category

</button>

<a
href="categories.php"
class="btn btn-secondary">

Back

</a>

</form>

</div>

</div>

</div>

</div>

<?php
include "includes/footer.php";
?>
