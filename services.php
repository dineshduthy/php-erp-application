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

$result = $conn->query("SELECT * FROM services ORDER BY services_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between align-items-center mb-3">

<h2>Services Management</h2>

<a href="add-service.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add Service
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-primary">

<tr>

<th>ID</th>
<th>Image</th>
<th>Service</th>
<th>Description</th>
<th>Link</th>
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

<td><?php echo $row['services_id']; ?></td>

<td>

<?php

if($row['service_img']!="")
{

?>

<img src="uploads/<?php echo $row['service_img']; ?>" width="80">

<?php

}
else
{

echo "No Image";

}

?>

</td>

<td><?php echo htmlspecialchars($row['services_txt']); ?></td>

<td><?php echo substr(strip_tags($row['services_disc']),0,80); ?>...</td>

<td><?php echo htmlspecialchars($row['link']); ?></td>

<td>

<a href="edit-service.php?id=<?php echo $row['services_id']; ?>" class="btn btn-warning btn-sm">

Edit

</a>

<a href="delete-service.php?id=<?php echo $row['services_id']; ?>" class="btn btn-danger btn-sm"
onclick="return confirm('Delete this service?');">

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

<td colspan="6" class="text-center">

No Services Found

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
