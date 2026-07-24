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
    $terms = $_POST['terms_cnt'];
    $privacy = $_POST['privacy'];

    $stmt = $conn->prepare("INSERT INTO company(terms_cnt,privacy) VALUES(?,?)");
    $stmt->bind_param("ss",$terms,$privacy);

    if($stmt->execute())
    {
        header("Location:company.php");
        exit();
    }
}
?>

<div class="content">

<div class="container-fluid">

<div class="card">

<div class="card-header bg-primary text-white">
<h4>Add Company Information</h4>
</div>

<div class="card-body">

<form method="post">

<div class="mb-3">

<label>Terms & Conditions</label>

<textarea
name="terms_cnt"
class="form-control"
rows="8"
required></textarea>

</div>

<div class="mb-3">

<label>Privacy Policy</label>

<textarea
name="privacy"
class="form-control"
rows="8"
required></textarea>

</div>

<button
type="submit"
name="save"
class="btn btn-success">

Save

</button>

<a href="company.php" class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
