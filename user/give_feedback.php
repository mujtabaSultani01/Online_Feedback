<script type="text/javascript">
  
    function text(x){

      if( x == 0)
        document.getElementById('show').style.display = "none";
      else
        document.getElementById('show').style.display = "block";
      return;
    }

</script>
<?php 


    extract($_POST);

    $user= $_SESSION['user'];

     $result = mysqli_query($conn,"select * from user where email='$user'");
     //$count = mysqli_num_rows($result);
     $row = mysqli_fetch_assoc($result);


?>
<fieldset>
<center><u>Employee's FeedBack Form</u></center><br>
 
<fieldset>

<h3>Please give your report select 1 for open websites and 0 for block websites:</h3>

<button type="button" style="font-size:7pt;color:white;background-color:Black;border:2px solid #336600;padding:3px"> Open 1</button>
<button type="button" style="font-size:7pt;color:white;background-color:red;border:2px solid #336600;padding:3px">Block 0</button><br>

</table>

<h3 style="display: inline;"> Repoting </h3><h4 style="display: inline; margin-left: 67%;">Open(1)</h4><h4 style="display: inline; margin-left: 14%;">Block(0)</h4>
 <form method="post">
 <table  class="table table-bordered" >
<Td><b>1:</b> Salaam</td>
<td> 
  <input style="margin-left: 3%;" type="radio" name="Company" value = "Salam" onclick="text(1)">
  <input style="margin-left: 70%;" type="radio" name="Company" value="0" onclick="text(0)" checked>
</td>

<tr>
<td>
<b>2:</b> Afghan Telecom</td>
<td> 
  <input style="margin-left: 3%;" type="radio" name="Company" value="Afghan_Telecom" onclick="text(1)">
  <input style="margin-left: 70%;" type="radio" name="Company" value="0" onclick="text(0)"></td>
</tr>
<tr>
<td><b>3:</b> AWCC:</td>
<td>
  <input style="margin-left: 3%;" type="radio" name="Company" value="AWCC" onclick="text(1)">
  <input style="margin-left: 70%;" type="radio" name="Company" value="0" onclick="text(0)"></td>
</tr>

<tr><td>
<b>4:</b> Roshan:</td>
<td> 
  <input style="margin-left: 3%;" type="radio" name="Company" value="Roshan" onclick="text(1)">
  <input style="margin-left: 70%;" type="radio" name="Company" value="0" onclick="text(0)"></td>
<tr>
<td>
<b>5:</b> Etisalat:</td><td> 
  <input style="margin-left: 3%;" type="radio" name="Company" value="Etisalat" onclick="text(1)">
  <input style="margin-left: 70%;" type="radio" name="Company" value="0" onclick="text(0)"></td>
</tr>
<tr>
<td>
<b>5:</b> MTN:</td> 
<td>
  <input style="margin-left: 3%;" type="radio" name="Company" value="MTN" onclick="text(1)">
  <input style="margin-left: 70%;" type="radio" name="Company" value="0" onclick="text(0)"></td>
</tr>
</table>

<div id="show" style="display:none;">
<b></b>Open Links<br><br>

<textarea name="url" rows="5" cols="60" id="comments" style="font-family:sans-serif;font-size:1.2em;">

</textarea><br><br>
<b></b>Your Comment:<br><br>

<textarea name="comment" rows="5" cols="60" id="comments" style="font-family:sans-serif;font-size:1.2em;">

</textarea>

<p><button type="submit" style="font-size:7pt;color:white;background-color:brown;border:2px solid #336600; padding-left: 19px; padding-right: 19px; padding-top: 8px; padding-bottom: 8px; margin-left: 30%;" name="submit">Submitt</button></p>
</div>


</form>
 

<?php

      if(isset($submit)){

  
       
      $reporter = $row["name"];
      $province = $row["semester"];
      $companyName = $_POST['Company'];
      $comment = $_POST['comment'];
      $url = $_POST['url'];

      $date_value = date("Y-m-d m:i:s");
    
    $query="INSERT INTO `feed_back` (`id`, `reporter`, `province`, `companyName`, `comment`, `url`, `date_value`) VALUES (NULL, '$reporter', '$province', '$companyName', '$comment', '$url', '$date_value')";


    if(mysqli_query($conn, $query)){

    echo "<h2 style='color:pink'>Your report has been sent, thanks for your consideration.</h2>";

     }
     else{
         echo "<h2 style='color:red'>Submission has been failed! Try again.</h2>";
     }

     



/*
$sql=mysqli_query($conn,"select * from feed_back where student_id='$user' and faculty_id='$faculty'");

$r=mysqli_num_rows($sql);

if($r==true)
{
echo "<h2 style='color:red'>You already given report</h2>";
}
else
{

  $query="insert into feedback values('','$user','$faculty','$quest4','$quest5','$quest6','$quest7','$quest8','$quest9',now())";

mysqli_query($conn,$query);

echo "<h2 style='color:green'>Your report has been sent, thanks for consideration.</h2>";

  }
  */


}

  

?>


</fieldset>


<!--<a href="transport.html"><p align="right"><button type="Button"style="font-size:7pt;color:white;background-color:green;border:2px solid #336600;padding:7px">Next</button></p></a>
<a href="About.php"><p align="right"><button type="Button" style="font-size:7pt;color:white;background-color:green;border:2px solid #336600;padding:7px">Back</button></p></a>-->

</div><!--close content_item-->
      </div><!--close content-->   
      
      </div><!--close site_content-->     
  
    
    </div><!--close main-->
  </form>
<center>