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
    $title = $_POST['news_head'];
    $disc  = $_POST['news_disc'];
    $date  = $_POST['posted_date'];

    $image="";

    if(!empty($_FILES['news_img']['name']))
    {
        $image=time()."_".$_FILES['news_img']['name'];
        move_uploaded_file(
            $_FILES['news_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("INSERT INTO news(news_head,news_disc,news_img,posted_date) VALUES(?,?,?,?)");
    $stmt->bind_param("ssss",$title,$disc,$image,$date);

    if($stmt->execute())
    {
        header("Location:news.php");
        exit();
    }
}
?>

<div class="content">

<div class="container-fluid">

<div class="card">

<div class="card-header bg-primary text-white">

<h4>Add News</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>News Title</label>

<input
type="text"
name="news_head"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Description</label>

<textarea
name="news_disc"
class="form-control"
rows="6"
required></textarea>

</div>

<div class="mb-3">

<label>News Image</label>

<input
type="file"
name="news_img"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Posted Date</label>

<input
type="date"
name="posted_date"
class="form-control"
value="<?php echo date('Y-m-d');?>"
required>

</div>

<button
type="submit"
name="save"
class="btn btn-success">

Save News

</button>

<a href="news.php" class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
