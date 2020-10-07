<!DOCTYPE html>
<html>
<head>
<style>
	table, th, td {
  border: 1px solid black;
}
</style>
</head>
<div class="container">
  <table style="width:100%">
    <caption>User Profile</caption>
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Roll No.</th>
        <th scope="col">Mobile</th>
        <th scope="col">Course</th>
      </tr>
    </thead>
    <tbody>
      <tr>
      	<?php
include('config.php');
if(isset($_POST['submit']))
{
	$user=$_POST['user'];
	$sql="SELECT * FROM profile where user_id='$user'";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
?>
        <td scope="row"><?php echo $row['name']; ?></td>
        <td scope="row"><?php echo $row['rollno']; ?></td>
        <td scope="row"><?php echo $row['mobile'];?></td>
        <td scope="row"><?php echo $row['course']; }?></td>
      </tr>
    </tbody>
  </table>
</div>
</html>