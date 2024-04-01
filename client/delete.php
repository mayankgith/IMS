<?php
include "../config.php";    
if(is_numeric($_GET['id'])){    
$sql = "delete from customer where Customer_Num = '".$_GET['id']."'";    
$result = mysqli_query($dbc,$sql);    
}
header('Location:modified1.php');
?>