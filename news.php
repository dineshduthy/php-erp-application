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

$result = $conn->query("SELECT * FROM news ORDER BY news_id DESC");
?>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between mb-3">

<h2>News Management</h2>

<a href="add-news.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add News
</a>

</div>

<div class="card">

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Image</th>

<th>Title</th>

<th>Description</th>

<th>Date</th>

<th width="180">Action</th>

</tr>

</thead>

<tbody>

<?php while($row=$result->fetch_assoc()) { ?>

<tr>

<td><?php echo $row['news_id']; ?></td>

<td>

<?php
if($row['news_img']!="")
{
?>
<img src="uploads/<?php echo $row['news_img']; ?>" width="90">
<?php
}
?>

</td>

<td><?php echo htmlspecialchars($row['news_head']); ?></td>

<td>

<?php

echo substr(strip_tags($row['news_disc']),0,80);

?>

...

</td>

<td><?php echo $row['posted_date']; ?></td>

<td>

<a href="edit-news.php?id=<?php echo $row['news_id']; ?>" class="btn btn-warning btn-sm">

Edit

</a>

<a href="delete-news.php?id=<?php echo $row['news_id']; ?>"

class="btn btn-danger btn-sm"

onclick="return confirm('Delete this news?')">

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
