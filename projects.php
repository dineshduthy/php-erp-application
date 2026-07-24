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

$sql="SELECT p.*,c.category_name
FROM projects p
LEFT JOIN category c
ON p.category_id=c.category_id
ORDER BY p.projects_id DESC";

$result=$conn->query($sql);
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>Projects Management</h2>

<a href="add-project.php" class="btn btn-primary">

<i class="fa fa-plus"></i> Add Project

</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>
<th>Title</th>
<th>Category</th>
<th>Image</th>
<th width="180">Action</th>

</tr>

</thead>

<tbody>

<?php while($row=$result->fetch_assoc()){ ?>

<tr>

<td><?php echo $row['projects_id']; ?></td>

<td><?php echo htmlspecialchars($row['projects_txt']); ?></td>

<td><?php echo htmlspecialchars($row['category_name']); ?></td>

<td>

<?php if($row['projects_img']){ ?>

<img src="uploads/<?php echo $row['projects_img']; ?>" width="90">

<?php } ?>

</td>

<td>

<a href="edit-project.php?id=<?php echo $row['projects_id']; ?>" class="btn btn-warning btn-sm">

Edit

</a>

<a href="delete-project.php?id=<?php echo $row['projects_id']; ?>" class="btn btn-danger btn-sm"
onclick="return confirm('Delete this project?')">

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
