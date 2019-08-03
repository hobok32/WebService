<?php
$json = file_get_contents("php://input");
$obj = json_decode($json, TRUE);
$hoten = $obj["HOTEN"];
$username = $obj["USERNAME"];
$password = $obj["PASSWORD"];

require("jwt.php");

$a=mysqli_connect("localhost","root","");
mysqli_select_db($a,"demolive");

$token = array();
    $token["Username"] = "aaaa";
    $token["HoTen"] = "bbbb";
$jsonwebtoken = JWT::encode($token, "DUNG_CHO_AI_BIET_NHA");
$qr = "INSERT INTO NhanVien VALUES(null,'$hoten','$username','$password','$jsonwebtoken')";

mysqli_query($a,$qr);  
$id = mysqli_insert_id($a);


?>

{
    "id":"<?= $id ?>"
}
