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

$result = $conn->query("SELECT * FROM company ORDER BY company_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>Company Management</h2>

<a href="add-company.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add Company
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Terms & Conditions</th>

<th>Privacy Policy</th>

<th width="180">Action</th>

</tr>

</thead>

<tbody>

<?php while($row=$result->fetch_assoc()) { ?>

<tr>

<td><?php echo $row['company_id']; ?></td>

<td><?php echo substr(strip_tags($row['terms_cnt']),0,100); ?>...</td>

<td><?php echo substr(strip_tags($row['privacy']),0,100); ?>...</td>

<td>

<a href="edit-company.php?id=<?php echo $row['company_id']; ?>" class="btn btn-warning btn-sm">
Edit
</a>

<a href="delete-company.php?id=<?php echo $row['company_id']; ?>"
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
