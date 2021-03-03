<?php

$db = mysqli_connect("localhost", "root", "", "assignment");

$id = $_POST['id'];

$c7=mysqli_query($db,"update `datas` set Status = 1 where id = $id");

header("location:index.php");



?>