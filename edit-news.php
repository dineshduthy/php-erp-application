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

$result = $conn->query("SELECT * FROM news WHERE news_id=$id");

if($result->num_rows==0)
{
    header("Location:news.php");
    exit();
}

$row = $result->fetch_assoc();

if(isset($_POST['update']))
{
    $title=$_POST['news_head'];
    $disc=$_POST['news_disc'];
    $date=$_POST['posted_date'];

    $image=$row['news_img'];

    if(!empty($_FILES['news_img']['name']))
    {
        if(file_exists("uploads/".$image))
        {
            unlink("uploads/".$image);
        }

        $image=time()."_".$_FILES['news_img']['name'];

        move_uploaded_file(
            $_FILES['news_img']['tmp_name'],
            "uploads/".$image
        );
    }

    $stmt=$conn->prepare("UPDATE news SET news_head=?,news_disc=?,news_img=?,posted_date=? WHERE news_id=?");

    $stmt->bind_param(
        "ssssi",
        $title,
        $disc,
        $image,
        $date,
        $id
    );

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

<div class="card-header bg-warning">

<h4>Edit News</h4>

</div>

<div class="card-body">

<form method="post" enctype="multipart/form-data">

<div class="mb-3">

<label>News Title</label>

<input
type="text"
name="news_head"
class="form-control"
value="<?php echo htmlspecialchars($row['news_head']); ?>"
required>

</div>

<div class="mb-3">

<label>Description</label>

<textarea
name="news_disc"
class="form-control"
rows="6"
required><?php echo htmlspecialchars($row['news_disc']); ?></textarea>

</div>

<div class="mb-3">

<label>Current Image</label><br>

<?php
if($row['news_img']!="")
{
?>
<img src="uploads/<?php echo $row['news_img']; ?>" width="120">
<?php
}
?>

</div>

<div class="mb-3">

<label>Replace Image</label>

<input
type="file"
name="news_img"
class="form-control">

</div>

<div class="mb-3">

<label>Posted Date</label>

<input
type="date"
name="posted_date"
class="form-control"
value="<?php echo $row['posted_date']; ?>"
required>

</div>

<button
type="submit"
name="update"
class="btn btn-success">

Update

</button>

<a href="news.php"
class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

<?php include "includes/footer.php"; ?>
