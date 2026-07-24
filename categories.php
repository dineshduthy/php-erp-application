<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location: index.php");
    exit();
}

require_once "includes/db.php";
include "includes/header.php";
include "includes/sidebar.php";

$sql = "SELECT * FROM category ORDER BY category_id DESC";
$result = $conn->query($sql);
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between align-items-center mb-4">

<h2>Category Management</h2>

<a href="add-category.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add Category
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-primary">

<tr>

<th width="80">ID</th>

<th width="120">Image</th>

<th>Category Name</th>

<th>Description</th>

<th width="180">Action</th>

</tr>

</thead>

<tbody>

<?php

if($result && $result->num_rows>0)
{

while($row=$result->fetch_assoc())
{

?>

<tr>

<td>

<?php echo $row['category_id']; ?>

</td>

<td>

<?php

if(!empty($row['category_img']))
{

?>

<img
src="uploads/<?php echo htmlspecialchars($row['category_img']); ?>"
width="80"
height="80"
style="object-fit:cover;">

<?php

}
else
{

echo "<span class='text-danger'>No Image</span>";

}

?>

</td>

<td>

<?php echo htmlspecialchars($row['category_name']); ?>

</td>

<td>

<?php echo htmlspecialchars($row['category_disc']); ?>

</td>

<td>

<a
href="edit-category.php?id=<?php echo $row['category_id']; ?>"
class="btn btn-warning btn-sm">

<i class="fa fa-edit"></i> Edit

</a>

<a
href="delete-category.php?id=<?php echo $row['category_id']; ?>"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure you want to delete this category?');">

<i class="fa fa-trash"></i> Delete

</a>

</td>

</tr>

<?php

}

}
else
{

?>

<tr>

<td colspan="5" class="text-center">

No Categories Found

</td>

</tr>

<?php

}

?>

</tbody>

</table>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
