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

$result=$conn->query("SELECT * FROM banner ORDER BY banner_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>Banner Management</h2>

<a href="add-banner.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add Banner
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-striped">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Caption 1</th>

<th>Caption 2</th>

<th>Image</th>

<th width="180">Action</th>

</tr>

</thead>

<tbody>

<?php while($row=$result->fetch_assoc()) { ?>

<tr>

<td><?php echo $row['banner_id']; ?></td>

<td><?php echo htmlspecialchars($row['banner_caption1']); ?></td>

<td><?php echo htmlspecialchars($row['banner_caption2']); ?></td>

<td>

<?php if($row['banner_img']) { ?>

<img
src="uploads/<?php echo $row['banner_img'];?>"
width="150">

<?php } ?>

</td>

<td>

<a
href="edit-banner.php?id=<?php echo $row['banner_id'];?>"
class="btn btn-warning btn-sm">

Edit

</a>

<a
href="delete-banner.php?id=<?php echo $row['banner_id'];?>"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete this banner?')">

Delete

</a>

</td>

</tr>

<?php } ?>

</tbody>

</table>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
