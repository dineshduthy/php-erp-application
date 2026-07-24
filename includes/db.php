<?php

$conn = new mysqli(
    "mysql",
    "testuser",
    "Test@123",
    "testdb"
);

if ($conn->connect_error) {
    die("Database Connection Failed : " . $conn->connect_error);
}

$conn->set_charset("utf8");

?>
