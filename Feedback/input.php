<?php
		include "../config.php";
		$a=$_POST['Subject'];
		$b=$_POST['textarea'];
		$query="insert into feedback(Subject,textarea) values('$a','$b')";
		mysqli_query($dbc,$query) or die($query."Can't Connect to Query...");
		//echo "Your Application is submited";
		?>
		<!DOCTYPE html>
		<html>
		<head>
			<script type="text/javascript">
			alert("Your Application is submited !");
		</script>
		</head>
		<style>
			a{
				font-size: 30px;
			}
		</style>
		<a href="../index.php">  Back to home page</a>
		<body bgcolor="#F0E8A0" >
		
		</body>
		</html>