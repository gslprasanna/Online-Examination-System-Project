<?php

session_start();
include "../config.php";
$total_que=0;
$res1=mysqli_query($conn,"select * from questions where category='$_SESSION[exam_category]'");
$total_que=mysqli_num_rows($res1);
echo $total_que;


?>