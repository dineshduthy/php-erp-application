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

$result=$conn->query("SELECT * FROM brands ORDER BY brands_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>Brand Management</h2>

<a href="add-brand.php" class="btn btn-primary">

<i class="fa fa-plus"></i>

Add Brand

</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-primary">

<tr>

<th>ID</th>
<th>Image</th>
<th>Brand Name</th>
<th>Route</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<?php

if($result->num_rows>0)
{

while($row=$result->fetch_assoc())
{

?>

<tr>

<td><?php echo $row['brands_id']; ?></td>

<td>

<?php

if($row['brands_img']!="")
{

?>

<img
src="uploads/<?php echo $row['brands_img']; ?>"
width="70"
height="70">

<?php

}
else
{

echo "No Image";

}

?>

</td>

<td><?php echo htmlspecialchars($row['brands_name']); ?></td>

<td><?php echo htmlspecialchars($row['rout']); ?></td>

<td>

<a
href="edit-brand.php?id=<?php echo $row['brands_id'];?>"
class="btn btn-warning btn-sm">

Edit

</a>

<a
href="delete-brand.php?id=<?php echo $row['brands_id'];?>"
onclick="return confirm('Delete Brand?')"
class="btn btn-danger btn-sm">

Delete

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

No Brands Found

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
