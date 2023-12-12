<?php
require('server.php');

    //start เซฟลง MySQL
    if(isset($_POST['submit'])) {
        if(!empty($_POST["name"])){
        session_start();
        $us = $_SESSION['username'];
        echo $us;
        $userpost = $_POST['name'];
        echo $userpost;
        $sqlsub = "INSERT INTO posts (postsnaja, us)
        VALUES ('$userpost', '$us')";

        if ($conn->query($sqlsub) === false) {
            echo("Error: " . $sql . "<br>" . $conn->error);
        }
        header("location: index.php");

    }else{
        echo "Error Please Enter Post";
        //header("location: index.php");
    }
}else{
    echo "ไม่มีข้อมูลใน submit";
}
?>