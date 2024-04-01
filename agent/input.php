<?php
		include "../config.php";
		$ac=$_POST['Agent_code'];
		$an=$_POST['Agent_Name'];
		$d=$_POST['DOB'];
		$a=$_POST['Address'];
		$p=$_POST['Pincode'];
		$con=$_POST['Contact_Number'];
		$br=$_POST['Branch'];
		$query="insert into agent(Agent_code,Agent_Name,DOB, Address, Pincode, Branch, Contact_Num) values('$ac','$an','$d','$a',$p,'$br',$con)";
		mysqli_query($dbc,$query) or die($query."Can't Connect to Query...");
?>