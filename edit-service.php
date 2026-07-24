<?php
session_start();

if(!isset($_SESSION['user']))
{
    header("Location:index.php");
    exit();
}

require_once "includes/db.php";

if(!isset($_GET['id']))
{
    header("Location:services.php");
    exit();
}

$id = intval($_GET['id']);

$stmt = $conn->prepare("SELECT * FROM services WHERE services_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows==0)
{
    die("Service not found.");
}

$service = $result->fetch_assoc();

$message="";

if(isset($_POST['update']))
{

    $title=$_POST['services_txt'];
    $description=$_POST['services_disc'];
    $link=$_POST['link'];

    $image=$service['service_img'];

    if(isset($_FILES['service_img']) && $_FILES['service_img']['error']==0)
    {

        if($image!="" && file_exists("uploads/".$image))
        {
            unlink("uploads/".$image);
        }

        $image=time()."_".basename($_FILES['service_img']['name']);

        move_uploaded_file(
            $_FILES['service_img']['tmp_name'],
            "uploads/".$image
        );

    }

    $stmt=$conn->prepare("UPDATE services SET services_txt=?, services_disc=?, service_img=?, link=? WHERE services_id=?");

    $stmt->bind_param(
        "ssssi",
        $title,
        $description,
        $image,
        $link,
        $id
    );

    if($stmt->execute())
    {
        header("Location:services.php");
        exit();
    }
    else
    {
        $message="Failed to update service.";
    }

}

include "includes/header.php";
include "includes/sidebar.php";
?>

<div class="content">

<div class="container-fluid">

<h2>Edit Service</h2>

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
value="<?php echo htmlspecialchars($service['services_txt']); ?>"
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
required><?php echo htmlspecialchars($service['services_disc']); ?></textarea>

</div>

<div class="mb-3">

<label class="form-label">

Link

</label>

<input
type="text"
name="link"
class="form-control"
value="<?php echo htmlspecialchars($service['link']); ?>">

</div>

<div class="mb-3">

<label class="form-label">

Current Image

</label>

<br>

<?php
if($service['service_img']!="")
{
?>

<img
src="uploads/<?php echo htmlspecialchars($service['service_img']); ?>"
width="150"
class="mb-3">

<?php
}
else
{
echo "<p>No Image Available</p>";
}
?>

<input
type="file"
name="service_img"
class="form-control"
accept="image/*">

</div>

<button
type="submit"
name="update"
class="btn btn-success">

<i class="fa fa-save"></i>

Update Service

</button>

<a
href="services.php"
class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php
include "includes/footer.php";
?>
