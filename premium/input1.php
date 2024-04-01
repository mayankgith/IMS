<?php
include "../config.php";
$p=$_POST['pol'];
$sql = "select * from policy_data where Policy_Num = '$p'";   
$result = mysqli_query($dbc,$sql);
?>