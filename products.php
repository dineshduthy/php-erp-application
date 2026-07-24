<?php
session_start();

if (!isset($_SESSION['user'])) {
    header("Location: index.php");
    exit();
}

require_once "includes/db.php";
include "includes/header.php";
include "includes/sidebar.php";

$sql = "SELECT
            products_id,
            products_heading,
            products_availability,
            products_img
        FROM products
        ORDER BY products_id DESC";

$result = $conn->query($sql);
?>

<div class="content">

<div class="d-flex justify-content-between mb-3">

<h2>Products</h2>

<a href="add-product.php" class="btn btn-primary">
<i class="fa fa-plus"></i> Add Product
</a>

</div>

<table class="table table-bordered table-hover bg-white">

<thead class="table-primary">

<tr>

<th>ID</th>

<th>Image</th>

<th>Product Name</th>

<th>Availability</th>

<th>Action</th>

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

<td><?php echo $row['products_id']; ?></td>

<td>

<?php

if(!empty($row['products_img']))
{

?>

<img
src="uploads/<?php echo htmlspecialchars($row['products_img']); ?>"
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

<td>

<?php echo htmlspecialchars($row['products_heading']); ?>

</td>

<td>

<?php echo htmlspecialchars($row['products_availability']); ?>

</td>

<td>

<a
href="edit-product.php?id=<?php echo $row['products_id'];?>"
class="btn btn-warning btn-sm">

Edit

</a>

<a
href="delete-product.php?id=<?php echo $row['products_id'];?>"
onclick="return confirm('Delete this Product?')"
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

No Products Found

</td>

</tr>

<?php

}

?>

</tbody>

</table>

</div>

<?php include "includes/footer.php"; ?>
