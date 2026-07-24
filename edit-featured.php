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

$id=(int)$_GET['id'];

$result=$conn->query("SELECT * FROM featured WHERE featured_id=$id");

$row=$result->fetch_assoc();

if(isset($_POST['update']))
{
    $icon=$_POST['icon'];
    $text=$_POST['icon_text'];
    $page=$_POST['display_page'];
    $link=$_POST['link'];
    $route=$_POST['rout'];

    $stmt=$conn->prepare("UPDATE featured SET icon=?,icon_text=?,display_page=?,link=?,rout=? WHERE featured_id=?");

    $stmt->bind_param("sssssi",$icon,$text,$page,$link,$route,$id);

    if($stmt->execute())
    {
        header("Location:featured.php");
        exit();
    }
}
?>

<div class="content">

<div class="container-fluid">

<div class="card">

<div class="card-header bg-warning">

<h4>Edit Featured</h4>

</div>

<div class="card-body">

<form method="post">

<div class="mb-3">

<label>Icon</label>

<input type="text" name="icon" value="<?php echo htmlspecialchars($row['icon']); ?>" class="form-control">

</div>

<div class="mb-3">

<label>Icon Text</label>

<input type="text" name="icon_text" value="<?php echo htmlspecialchars($row['icon_text']); ?>" class="form-control">

</div>

<div class="mb-3">

<label>Display Page</label>

<input type="text" name="display_page" value="<?php echo htmlspecialchars($row['display_page']); ?>" class="form-control">

</div>

<div class="mb-3">

<label>Link</label>

<input type="text" name="link" value="<?php echo htmlspecialchars($row['link']); ?>" class="form-control">

</div>

<div class="mb-3">

<label>Route</label>

<input type="text" name="rout" value="<?php echo htmlspecialchars($row['rout']); ?>" class="form-control">

</div>

<button type="submit" name="update" class="btn btn-success">

Update

</button>

<a href="featured.php" class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
