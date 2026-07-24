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

$result = $conn->query("SELECT * FROM about ORDER BY abt_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>About Management</h2>

<a href="add-about.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add About
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Heading</th>

<th>Small Text</th>

<th>Mission & Vision</th>

<th>Image</th>

<th width="180">Action</th>

</tr>

</thead>

<tbody>

<?php while($row=$result->fetch_assoc()) { ?>

<tr>

<td><?php echo $row['abt_id']; ?></td>

<td><?php echo htmlspecialchars($row['abt_head']); ?></td>

<td>

<?php

echo substr(strip_tags($row['abt_txt_small']),0,80);

?>

...

</td>

<td>

<?php

echo substr(strip_tags($row['mission_vision']),0,60);

?>

...

</td>

<td>

<?php if($row['abt_img']){ ?>

<img
src="uploads/<?php echo $row['abt_img'];?>"
width="80">

<?php } ?>

</td>

<td>

<a
href="edit-about.php?id=<?php echo $row['abt_id'];?>"
class="btn btn-warning btn-sm">

Edit

</a>

<a
href="delete-about.php?id=<?php echo $row['abt_id'];?>"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete this record?')">

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
