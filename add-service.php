<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

$message="";

if(isset($_POST['save']))
{

    $title=$_POST['services_txt'];
    $description=$_POST['services_disc'];
    $link=$_POST['link'];

    $image="";

    if(isset($_FILES['service_img']) && $_FILES['service_img']['error']==0)
    {

        $image=time()."_".basename($_FILES['service_img']['name']);

        move_uploaded_file(
            $_FILES['service_img']['tmp_name'],
            "uploads/".$image
        );

    }

    $stmt=$conn->prepare("INSERT INTO services(services_txt,services_disc,service_img,link) VALUES(?,?,?,?)");

    $stmt->bind_param(
        "ssss",
        $title,
        $description,
        $image,
        $link
    );

    if($stmt->execute())
    {
        header("Location: services.php");
        exit();
    }
    else
    {
        $message="Unable to save service.";
    }

}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Add Service</h2>

<?php
if($message!="")
{
?>

<div class="alert alert-danger">

<?php echo $message; ?>

</div>

<?php
}
?>

<div class="card">

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label class="form-label">

Service Title

</label>

<input
type="text"
name="services_txt"
class="form-control"
required>

</div>

<div class="mb-3">

<label class="form-label">

Description

</label>

<textarea
name="services_disc"
rows="6"
class="form-control"
required></textarea>

</div>

<div class="mb-3">

<label class="form-label">

Link

</label>

<input
type="text"
name="link"
class="form-control"
placeholder="https://example.com">

</div>

<div class="mb-3">

<label class="form-label">

Service Image

</label>

<input
type="file"
name="service_img"
class="form-control"
accept="image/*">

</div>

<button
type="submit"
name="save"
class="btn btn-success">

<i class="fa fa-save"></i>

Save Service

</button>

<a
href="services.php"
class="btn btn-secondary">

Back

</a>

</form>

</div>

</div>

</div>

</div>

<?php
include "includes/footer.php";
?>
