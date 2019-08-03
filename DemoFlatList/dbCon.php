<?php
    $con = mysqli_connect("localhost","root","");
    mysqli_select_db($con,"flatlistevent");
    mysqli_query($con, "SET NAMES 'utf8'");
    
    class Event{
        public $key;
        public $NAME;
        public $DESCRIPTION;
        public $IMAGEURL;
        
        function Event($id, $name, $description, $imageurl){
            $this->key = $id;
            $this->NAME = $name;
            $this->DESCRIPTION = $description;
            $this->IMAGEURL = $imageurl;
        }
        
    }
    
?>
