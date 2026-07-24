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

$id = intval($_GET['id']);

$result = $conn->query("SELECT * FROM company WHERE company_id=$id");

if($result->num_rows==0)
{
    header("Location:company.php");
    exit();
}

$row = $result->fetch_assoc();

if(isset($_POST['update']))
{
    $terms = $_POST['terms_cnt'];
    $privacy = $_POST['privacy'];

    $stmt = $conn->prepare("UPDATE company SET terms_cnt=?,privacy=? WHERE company_id=?");

    $stmt->bind_param(
        "ssi",
        $terms,
        $privacy,
        $id
    );

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

<div class="card-header bg-warning">

<h4>Edit Company Information</h4>

</div>

<div class="card-body">

<form method="post">

<div class="mb-3">

<label>Terms & Conditions</label>

<textarea
name="terms_cnt"
class="form-control"
rows="8"
required><?php echo htmlspecialchars($row['terms_cnt']); ?></textarea>

</div>

<div class="mb-3">

<label>Privacy Policy</label>

<textarea
name="privacy"
class="form-control"
rows="8"
required><?php echo htmlspecialchars($row['privacy']); ?></textarea>

</div>

<button
type="submit"
name="update"
class="btn btn-success">

Update

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
