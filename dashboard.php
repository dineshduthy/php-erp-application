<?php
session_start();

if (!isset($_SESSION['user']))
{
    header("Location: index.php");
    exit();
}

require_once "includes/db.php";
require_once "includes/header.php";
require_once "includes/sidebar.php";
?>

<div class="content">

<div style="
background:rgba(0,0,0,0.35);
min-height:90vh;
padding:50px;
border-radius:15px;
">

<div class="d-flex justify-content-between align-items-center mb-5">

<div>

<h1 style="
color:white;
font-size:48px;
font-weight:bold;
text-shadow:2px 2px 8px black;
">

<i class="fa fa-gauge-high"></i>
VST ERP Dashboard

</h1>

<p style="
color:white;
font-size:20px;
text-shadow:1px 1px 5px black;
">

Website Administration Panel

</p>

</div>

<div style="color:white;font-size:20px;">

Welcome

<strong><?php echo htmlspecialchars($_SESSION['user']); ?></strong>

<a href="logout.php" class="btn btn-danger ms-3">
<i class="fa fa-sign-out-alt"></i>
Logout
</a>

</div>

</div>

<div class="row">

<div class="col-lg-3 col-md-6 mb-4">

<a href="products.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-box fa-3x text-primary mb-3"></i>

<h4>Products</h4>

<p>Manage Products</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="categories.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-list fa-3x text-success mb-3"></i>

<h4>Categories</h4>

<p>Manage Categories</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="brands.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-tags fa-3x text-warning mb-3"></i>

<h4>Brands</h4>

<p>Manage Brands</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="services.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-cogs fa-3x text-info mb-3"></i>

<h4>Services</h4>

<p>Manage Services</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="gallery.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-image fa-3x text-danger mb-3"></i>

<h4>Gallery</h4>

<p>Manage Gallery</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="news.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-newspaper fa-3x text-secondary mb-3"></i>

<h4>News</h4>

<p>Manage News</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="projects.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-diagram-project fa-3x text-success mb-3"></i>

<h4>Projects</h4>

<p>Manage Projects</p>

</div>

</a>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<a href="company.php" class="text-decoration-none">

<div class="card text-center p-4">

<i class="fa fa-building fa-3x text-dark mb-3"></i>

<h4>Company</h4>

<p>Company Settings</p>

</div>

</a>

</div>

</div>

<div class="card mt-4 p-4">

<h3 class="text-center">

<i class="fa fa-circle-info"></i>

Administrator Information

</h3>

<hr>

<p class="text-center">

Use the navigation menu on the left or the shortcut cards above to manage your website content.

</p>

</div>

</div>

</div>

<?php
require_once "includes/footer.php";
?>
