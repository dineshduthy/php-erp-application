<?php
session_start();

if(isset($_SESSION['user']))
{
    header("Location: dashboard.php");
    exit();
}

require_once "includes/db.php";

if(isset($_POST['login']))
{
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    $stmt = $conn->prepare("
        SELECT user_id
        FROM login
        WHERE user_name = ?
        AND password = MD5(?)
    ");

    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();

    $result = $stmt->get_result();

    if($result->num_rows > 0)
    {
        $_SESSION['user'] = $username;
        header("Location: dashboard.php");
        exit();
    }
    else
    {
        $msg = "Invalid Username or Password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>VST ERP Admin Login</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    margin:0;
    min-height:100vh;

    background-image:
        linear-gradient(rgba(0,0,0,.45), rgba(0,0,0,.45)),
        url("/assets/images/login-bg.jpg");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;

    display:flex;
    justify-content:center;
    align-items:center;
}

.login-box{

    width:420px;

    background:rgba(255,255,255,.92);

    padding:35px;

    border-radius:15px;

    box-shadow:0 10px 35px rgba(0,0,0,.45);

    backdrop-filter:blur(6px);

}

h2{

    text-align:center;

    color:#1565C0;

    margin-bottom:25px;

}

input{

    width:100%;

    padding:13px;

    margin-top:15px;

    border:1px solid #ccc;

    border-radius:6px;

    font-size:15px;

}

button{

    width:100%;

    padding:13px;

    margin-top:20px;

    background:#1565C0;

    color:#fff;

    border:none;

    border-radius:6px;

    font-size:16px;

    cursor:pointer;

    transition:.3s;

}

button:hover{

    background:#0D47A1;

}

.error{

    color:red;

    text-align:center;

    margin-bottom:15px;

    font-weight:bold;

}

.footer{

    margin-top:20px;

    text-align:center;

    color:#666;

    font-size:13px;

}

</style>

</head>

<body>

<div class="login-box">

<h2>VST ERP Admin Login</h2>

<?php
if(isset($msg))
{
    echo "<div class='error'>$msg</div>";
}
?>

<form method="post">

<input
type="text"
name="username"
placeholder="Username"
required>

<input
type="password"
name="password"
placeholder="Password"
required>

<button
type="submit"
name="login">

Login

</button>

</form>

<div class="footer">

© <?php echo date("Y"); ?> VST ERP Admin Panel

</div>

</div>

</body>

</html>
