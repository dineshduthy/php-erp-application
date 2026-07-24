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

/* Get image name before deleting */
$stmt = $conn->prepare("SELECT category_img FROM category WHERE category_id=?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {

    if (!empty($row['category_img'])) {

        $image = "uploads/" . $row['category_img'];

        if (file_exists($image)) {
            unlink($image);
        }

    }

}

/* Delete category */
$stmt = $conn->prepare("DELETE FROM category WHERE category_id=?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {

    header("Location: categories.php?msg=deleted");
    exit();

} else {

    echo "Error deleting category.";

}
?>
