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

$sql="SELECT g.*,c.category_name
FROM gallery g
LEFT JOIN category c
ON g.category_id=c.category_id
ORDER BY g.gallery_id DESC";

$result=$conn->query($sql);
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>Gallery Management</h2>

<a href="add-gallery.php" class="btn btn-primary">

<i class="fa fa-plus"></i>

Add Gallery

</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-primary">

<tr>

<th>ID</th>

<th>Image</th>

<th>Category</th>

<th>Caption</th>

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

<td><?php echo $row['gallery_id']; ?></td>

<td>

<?php

if($row['galley_image']!="")
{

?>

<img
src="uploads/<?php echo $row['galley_image'];?>"
width="100">

<?php

}
else
{

echo "No Image";

}

?>

</td>

<td>

<?php echo htmlspecialchars($row['category_name']); ?>

</td>

<td>

<?php echo htmlspecialchars($row['image_caption']); ?>

</td>

<td>

<a
href="edit-gallery.php?id=<?php echo $row['gallery_id'];?>"
class="btn btn-warning btn-sm">

Edit

</a>

<a
href="delete-gallery.php?id=<?php echo $row['gallery_id'];?>"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete Image?')">

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

No Images Found

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
