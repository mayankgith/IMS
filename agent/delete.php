<?php
include "../config.php";    
if(isset($_GET['id'])){    
$sql = "delete from agent where Agent_code = '".$_GET['id']."'";    
$result = mysqli_query($dbc,$sql);    
}
header('Location:modified1.php');
?>