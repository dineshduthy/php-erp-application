<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location: index.php");
    exit();
}

require_once "includes/db.php";

if (!isset($_GET['id'])) {
    header("Location: categories.php");
    exit();
}

$id = intval($_GET['id']);

$stmt = $conn->prepare("SELECT * FROM category WHERE category_id=?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 0) {
    die("Category not found.");
}

$category = $result->fetch_assoc();

$message = "";

if (isset($_POST['update'])) {

    $category_name = trim($_POST['category_name']);
    $category_disc = trim($_POST['category_disc']);

    $imageName = $category['category_img'];

    if (isset($_FILES['category_img']) && $_FILES['category_img']['error'] == 0) {

        if (!empty($imageName) && file_exists("uploads/" . $imageName)) {
            unlink("uploads/" . $imageName);
        }

        $imageName = time() . "_" . basename($_FILES['category_img']['name']);

        move_uploaded_file(
            $_FILES['category_img']['tmp_name'],
            "uploads/" . $imageName
        );
    }

    $stmt = $conn->prepare("UPDATE category
        SET
        category_name=?,
        category_disc=?,
        category_img=?
        WHERE category_id=?");

    $stmt->bind_param(
        "sssi",
        $category_name,
        $category_disc,
        $imageName,
        $id
    );

    if ($stmt->execute()) {
        header("Location: categories.php");
        exit();
    } else {
        $message = "Update Failed";
    }
}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Edit Category</h2>

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
value="<?php echo htmlspecialchars($category['category_name']); ?>"
required>

</div>

<div class="mb-3">

<label class="form-label">
Description
</label>

<textarea
name="category_disc"
rows="5"
class="form-control"
required><?php echo htmlspecialchars($category['category_disc']); ?></textarea>

</div>

<div class="mb-3">

<label class="form-label">
Current Image
</label>

<br>

<?php

if(!empty($category['category_img']))
{

?>

<img
src="uploads/<?php echo htmlspecialchars($category['category_img']); ?>"
width="120"
class="mb-3">

<?php

}
else
{

echo "<p>No Image Available</p>";

}

?>

<input
type="file"
name="category_img"
class="form-control"
accept="image/*">

</div>

<button
type="submit"
name="update"
class="btn btn-success">

<i class="fa fa-save"></i>

Update Category

</button>

<a
href="categories.php"
class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php
include "includes/footer.php";
?>
