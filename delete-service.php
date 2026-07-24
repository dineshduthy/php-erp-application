<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

if (!isset($_GET['id'])) {
    header("Location:services.php");
    exit();
}

$id = intval($_GET['id']);

/* Get image before deleting */
$stmt = $conn->prepare("SELECT service_img FROM services WHERE services_id=?");
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {

    if (!empty($row['service_img'])) {

        $image = "uploads/" . $row['service_img'];

        if (file_exists($image)) {
            unlink($image);
        }

    }

}

/* Delete service */
$stmt = $conn->prepare("DELETE FROM services WHERE services_id=?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {

    header("Location:services.php?msg=deleted");
    exit();

} else {

    echo "<h3>Failed to delete service.</h3>";

}
?>
