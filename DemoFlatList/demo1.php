<?php
    require "dbCon.php";
    
    $qr = "SELECT * FROM eventcoming";
            
    $ds = mysqli_query($con, $qr);
    
    $mang = array();
    
    while($row = mysqli_fetch_array($ds)){
        array_push($mang, new Event(
                $row["id"], 
                $row["Name"], 
                $row["Description"], 
                $row["ImageUrl"]
                ));
    }
    echo json_encode($mang);
?>

