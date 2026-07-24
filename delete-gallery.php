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

/* Get image name before deleting */
$stmt = $conn->prepare("SELECT galley_image FROM gallery WHERE gallery_id=?");
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {

    if (!empty($row['galley_image'])) {

        $image = "uploads/" . $row['galley_image'];

        if (file_exists($image)) {
            unlink($image);
        }
    }
}

/* Delete record */
$stmt = $conn->prepare("DELETE FROM gallery WHERE gallery_id=?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {

    header("Location:gallery.php?msg=deleted");
    exit();

} else {

    echo "<h3>Failed to delete gallery image.</h3>";

}
?>
