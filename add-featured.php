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

if(isset($_POST['save']))
{
    $icon=$_POST['icon'];
    $text=$_POST['icon_text'];
    $page=$_POST['display_page'];
    $link=$_POST['link'];
    $route=$_POST['rout'];

    $stmt=$conn->prepare("INSERT INTO featured(icon,icon_text,display_page,link,rout) VALUES(?,?,?,?,?)");

    $stmt->bind_param("sssss",$icon,$text,$page,$link,$route);

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

<div class="card-header bg-primary text-white">

<h4>Add Featured</h4>

</div>

<div class="card-body">

<form method="post">

<div class="mb-3">

<label>Icon</label>

<input type="text" name="icon" class="form-control" required>

</div>

<div class="mb-3">

<label>Icon Text</label>

<input type="text" name="icon_text" class="form-control" required>

</div>

<div class="mb-3">

<label>Display Page</label>

<input type="text" name="display_page" class="form-control" required>

</div>

<div class="mb-3">

<label>Link</label>

<input type="text" name="link" class="form-control" required>

</div>

<div class="mb-3">

<label>Route</label>

<input type="text" name="rout" class="form-control" required>

</div>

<button type="submit" name="save" class="btn btn-success">

Save

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
