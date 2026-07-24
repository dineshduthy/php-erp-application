<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$message = "";

// Fetch categories
$categories = $conn->query("SELECT category_id, category_name FROM category ORDER BY category_name ASC");

if (isset($_POST['save'])) {

    $category_id = $_POST['category_id'];
    $caption = $_POST['image_caption'];

    $image = "";

    // =========================
    // FILE UPLOAD SECURITY
    // =========================
    if (isset($_FILES['galley_image']) && $_FILES['galley_image']['error'] === 0) {

        $fileTmp  = $_FILES['galley_image']['tmp_name'];
        $fileName = $_FILES['galley_image']['name'];
        $fileSize = $_FILES['galley_image']['size'];

        $uploadDir = __DIR__ . "/uploads/";

        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0775, true);
        }

        // =========================
        // 1. SIZE CHECK (2MB LIMIT)
        // =========================
        $maxSize = 2 * 1024 * 1024;

        if ($fileSize > $maxSize) {
            die("File too large. Maximum allowed size is 2MB.");
        }

        // =========================
        // 2. EXTENSION CHECK
        // =========================
        $allowedExt = ['jpg', 'jpeg', 'png', 'gif', 'webp'];
        $ext = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        if (!in_array($ext, $allowedExt)) {
            die("Invalid file extension.");
        }

        // =========================
        // 3. MIME TYPE CHECK
        // =========================
        $finfo = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($finfo, $fileTmp);
        finfo_close($finfo);

        $allowedMime = [
            'image/jpeg',
            'image/png',
            'image/gif',
            'image/webp'
        ];

        if (!in_array($mime, $allowedMime)) {
            die("Invalid file type (MIME validation failed).");
        }

        // =========================
        // 4. VERIFY REAL IMAGE
        // =========================
        if (!getimagesize($fileTmp)) {
            die("File is not a valid image.");
        }

        // =========================
        // 5. SAFE FILE NAME
        // =========================
        $image = time() . "_" . bin2hex(random_bytes(5)) . "." . $ext;

        $targetPath = $uploadDir . $image;

        // =========================
        // 6. MOVE FILE
        // =========================
        if (!move_uploaded_file($fileTmp, $targetPath)) {
            die("Upload failed. Check folder permissions.");
        }
    }

    // =========================
    // DATABASE INSERT
    // =========================
    $stmt = $conn->prepare("
        INSERT INTO gallery (galley_image, category_id, image_caption)
        VALUES (?, ?, ?)
    ");

    $stmt->bind_param(
        "sss",
        $image,
        $category_id,
        $caption
    );

    if ($stmt->execute()) {
        header("Location: gallery.php");
        exit();
    } else {
        $message = "Unable to save gallery image.";
    }
}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">
<div class="container-fluid">

<h2>Add Gallery Image</h2>

<?php if ($message != "") { ?>
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
        <option value="">Select Category</option>
        <?php while ($cat = $categories->fetch_assoc()) { ?>
            <option value="<?php echo $cat['category_id']; ?>">
                <?php echo htmlspecialchars($cat['category_name']); ?>
            </option>
        <?php } ?>
    </select>
</div>

<div class="mb-3">
    <label class="form-label">Image Caption</label>
    <input type="text" name="image_caption" class="form-control" required>
</div>

<div class="mb-3">
    <label class="form-label">Gallery Image</label>
    <input type="file" name="galley_image" class="form-control" accept="image/*" required>
</div>

<button type="submit" name="save" class="btn btn-success">
    <i class="fa fa-save"></i> Save Image
</button>

<a href="gallery.php" class="btn btn-secondary">Back</a>

</form>

</div>
</div>

</div>
</div>

<?php include "includes/footer.php"; ?>
