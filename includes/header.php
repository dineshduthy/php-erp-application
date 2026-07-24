<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>VST ERP Admin Panel</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Arial,Helvetica,sans-serif;
    background:#f4f6f9;
}

/* Sidebar */

.sidebar{
    position:fixed;
    top:0;
    left:0;
    width:250px;
    height:100vh;
    background:#1f2937;
    overflow-y:auto;
    z-index:1000;
}

.sidebar h3{
    padding:20px;
    color:#fff;
    text-align:center;
    background:#111827;
    margin:0;
}

.sidebar a{
    display:block;
    color:#fff;
    padding:14px 20px;
    text-decoration:none;
    transition:.3s;
}

.sidebar a:hover{
    background:#2563eb;
    padding-left:28px;
}

/* Main Content */

.content{
    margin-left:250px;
    min-height:100vh;
    padding:30px;

    background-image:
        linear-gradient(rgba(0,0,0,.40), rgba(0,0,0,.40)),
        url("/assets/images/dashboard-bg.jpg");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;
}

/* Cards */

.card{

    border:none;

    border-radius:15px;

    box-shadow:0 8px 20px rgba(0,0,0,.25);

    transition:.3s;

}

.card:hover{

    transform:translateY(-5px);

}

/* Responsive */

@media(max-width:768px){

.sidebar{

    width:100%;

    height:auto;

    position:relative;

}

.content{

    margin-left:0;

}

}

</style>

</head>

<body>
