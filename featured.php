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

$result=$conn->query("SELECT * FROM featured ORDER BY featured_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>Featured Management</h2>

<a href="add-featured.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add Featured
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>
<th>Icon</th>
<th>Icon Text</th>
<th>Display Page</th>
<th>Link</th>
<th>Route</th>
<th width="170">Action</th>

</tr>

</thead>

<tbody>

<?php while($row=$result->fetch_assoc()){ ?>

<tr>

<td><?php echo $row['featured_id']; ?></td>

<td><?php echo htmlspecialchars($row['icon']); ?></td>

<td><?php echo htmlspecialchars($row['icon_text']); ?></td>

<td><?php echo htmlspecialchars($row['display_page']); ?></td>

<td><?php echo htmlspecialchars($row['link']); ?></td>

<td><?php echo htmlspecialchars($row['rout']); ?></td>

<td>

<a href="edit-featured.php?id=<?php echo $row['featured_id']; ?>" class="btn btn-warning btn-sm">

Edit

</a>

<a href="delete-featured.php?id=<?php echo $row['featured_id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Delete this record?')">

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
