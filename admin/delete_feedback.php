<?php
include('../dbconfig.php');
	
	$info=$_GET['id'];
	
	mysqli_query($conn,"delete from feed_back where id='$info'");
	header('location:dashboard.php?info=feedback');
?>