<?php    
    
include "input.php";    
    
if(isset($_POST['Policy_Num'])){    
$sql = "delete from policy_data where id = '".$_POST['Policy_Num']."'";    
$result = mysqli_query($dbc,$sql);    
}    
    
$sql = "select * from policy_data";    
$result = mysqli_query($dbc,$sql);    
?>    
<html>    
    <body>    
		<link href = "../style.css" type = "text/css" rel = "stylesheet" />    
	   <link href = "registration.css" type = "text/css" rel = "stylesheet" />    
	   <table width = "100%" border = "1" cellspacing = "1" cellpadding = "1">    
            <tr>    
                <td>Policy Number</td>    
                <td>Customer Number</td>    
                <td>Agent code</td>    
                <td>DOC</td>    
                <td>Product</td>    
                <td>Sum Assured</td>    
                <td>Payment Period</td>    
                <td>Installmet period</td>    
				<td>Premium Data</td>
                <td colspan = "2">Action</td>    
            </tr>  
	<?php    
    
		while($row = mysqli_fetch_object($result)){    
    
    
	?>  
			<tr>  
				<td>  
					<?php echo $row->Policy_Num;?>  
				</td>  
				<td>  
					<?php echo $row->Customer_Num;?>  
				</td>  
				<td>  
					<?php echo $row->Agent_code;?>  
				</td>  
				<td>  
					<?php echo $row->DOC;?>  
				</td>  
				<td>  
					<?php echo $row->Product;?>  
				</td>  
				<td>  
					<?php echo $row->Sum_Assured;?>  
				</td>  
				<td>  
					<?php echo $row->Pay_Period;?>  
				</td>  
				<td>  
					<?php echo $row->Ins_Period;?>  
				</td>
				<td>  
					<a href="../Premium/modified1.php?policy_Num="<?php echo $row->Policy_Num;?>>Premium Data </a>
				</td>				
				<td> <a href="listing.php?id =     
					<?php echo $row->id;?>" onclick="return confirm('Are You Sure')">Delete    
				</a> | <a href="index.php?id =     
					<?php echo $row->id;?>" onclick="return confirm('Are You Sure')">Edit    
				</a> </td>  
			</tr>  
		<?php   header('Location:modified1.php');} ?>  			
        </table>   		
	<?php?>
    </body>    
</html>