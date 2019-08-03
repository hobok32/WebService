<?php
//date_default_timezone_set("Asia/Ho_Chi_Minh");
//
//$mysqli = mysqli_connect("localhost", "root", "", "db_app");
//$mysqli->set_charset("utf8");
//if (mysqli_connect_errno()) {
//    printf("Connect failed: %s\n", mysqli_connect_error());
//    exit();
//}



date_default_timezone_set("Asia/Ho_Chi_Minh");

$a=mysqli_connect("localhost","root","");
mysqli_select_db($a,"demolive");
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}



?>