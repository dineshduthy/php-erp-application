<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

if (!isset($_GET['id'])) {
    header("Location:gallery.php");
    exit();
}

$id = intval($_GET['id']);

$stmt = $conn->prepare("SELECT * FROM gallery WHERE gallery_id=?");
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows == 0) {
    die("Gallery record not found.");
}

$gallery = $result->fetch_assoc();

$categories = $conn->query("SELECT category_id, category_name FROM category ORDER BY category_name ASC");

$message = "";

if (isset($_POST['update'])) {

    $category_id = $_POST['category_id'];
    $caption = $_POST['image_caption'];

    $image = $gallery['galley_image'];

    if (isset($_FILES['galley_image']) && $_FILES['galley_image']['error'] == 0) {

        if (!empty($image) && file_exists("uploads/" . $image)) {
            unlink("uploads/" . $image);
        }

        $image = time() . "_" . basename($_FILES['galley_image']['name']);

        move_uploaded_file(
            $_FILES['galley_image']['tmp_name'],
            "uploads/" . $image
        );
    }

    $stmt = $conn->prepare("UPDATE gallery SET galley_image=?, category_id=?, image_caption=? WHERE gallery_id=?");

    $stmt->bind_param(
        "sssi",
        $image,
        $category_id,
        $caption,
        $id
    );

    if ($stmt->execute()) {
        header("Location:gallery.php");
        exit();
    } else {
        $message = "Unable to update gallery.";
    }
}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Edit Gallery</h2>

<?php if($message!=""){ ?>

<div class="alert alert-danger">

<?php echo $message; ?>

</div>

<?php } ?>

<div class="card">

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label class="form-label">Category</label>

<select name="category_id" class="form-control" required>

<?php
while($cat = $categories->fetch_assoc())
{
?>

<option value="<?php echo $cat['category_id']; ?>"
<?php if($gallery['category_id']==$cat['category_id']) echo "selected"; ?>>

<?php echo htmlspecialchars($cat['category_name']); ?>

</option>

<?php
}
?>

</select>

</div>

<div class="mb-3">

<label class="form-label">

Image Caption

</label>

<input
type="text"
name="image_caption"
class="form-control"
value="<?php echo htmlspecialchars($gallery['image_caption']); ?>"
required>

</div>

<div class="mb-3">

<label class="form-label">

Current Image

</label>

<br>

<?php

if($gallery['galley_image']!="")
{

?>

<img
src="uploads/<?php echo htmlspecialchars($gallery['galley_image']); ?>"
width="150"
class="mb-3">

<?php

}
else
{

echo "<p>No Image</p>";

}

?>

<input
type="file"
name="galley_image"
class="form-control"
accept="image/*">

</div>

<button
type="submit"
name="update"
class="btn btn-success">

<i class="fa fa-save"></i>

Update Gallery

</button>

<a
href="gallery.php"
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
