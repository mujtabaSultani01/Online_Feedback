<?php 
$q=mysqli_query($conn,"select * from feed_back");
$r=mysqli_num_rows($q);
if($r==false)   
{
echo "<h3 style='color:Red'>No any records found ! </h3>";
}
else
{
?>

<script type="text/javascript">
function deletes(id)
{
	a=confirm('Are You Sure To Remove This Record ?')
	 if(a)
     {
        window.location.href='delete_feedback.php?id='+id;
     }
}
</script>	


<div class="row">
	<div class="col-sm-12" style="color:orange;">
		<h1 align="center" >Feedback</h1>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	<tr class="success">
		<th>Re_No</th>
		<th>Repoter</th>
		<th>Province</th>
		<th>Company_Name</th>
		<th>Comment</th>
		<th>URLs</th>
		<th>Date</th>
		<th>Delete</th>
		
		</tr>
		</thead>
		
		<?php
		$i=1;
	while($row=mysqli_fetch_array($q))
		{
			echo "<tr>";
			echo "<td>".$i."</td>";
			echo "<td>".$row[1]."</td>";
			echo "<td>".$row[2]."</td>";
			echo "<td>".$row[3]."</td>";
			echo "<td>".$row[4]."</td>";
			echo "<td>".$row[5]."</td>";
			echo "<td>".$row[6]."</td>";

			echo "<td><a href='#' onclick='deletes($row[id])'><span class='glyphicon glyphicon-remove' style=color:red;></span></a></td>";
			echo "</tr>";
		$i++;
		}
		
		?>
		
	
		
</table>
</div>
</div>
<?php }?>