<?php
$json = file_get_contents("php://input");
$obj = json_decode($json, TRUE);
$a = $obj["numberOnumberTwone"];
$b = $obj["numberTwo"];
$c = $a + $b;

?>
{"kq":"<?=$c?>"}