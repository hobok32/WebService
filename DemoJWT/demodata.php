<?php

$json = file_get_contents("php://input");
$obj = json_decode($json, TRUE);


require("jwt.php");

$a=mysqli_connect("localhost","root","");
mysqli_select_db($a,"demolive");



$qr="SELECT * FROM nhanvien WHERE Username='$un' AND Password='$pa'";

$c="ERROR";

$myjson2 = json_encode($c);

$users= mysqli_query($a,$qr);
if(mysqli_num_rows($users)==1){
    //login dung
    $u = mysqli_fetch_array($users);
    $token = array();
    $token["Username"] = $u["Username"];
    $token["HoTen"] = $u["HoTen"];

    $jsonwebtoken = JWT::encode($token, "DUNG_CHO_AI_BIET_NHA");
    echo JsonHelper::getJson('token',$jsonwebtoken);
}else{
    //login sai
   echo JsonHelper::getJson('token',$myjson2);
};

?>

