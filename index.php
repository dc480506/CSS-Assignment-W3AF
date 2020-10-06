<?php 
include("config.php");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
  <div class="login">
  <form action="profile.php" method="POST">
    <div class="input">
      <div class="blockinput">
        <i class="icon-envelope-alt"></i><input type="text" placeholder="User ID" name="user">
      </div>
      <div class="blockinput">
        <i class="icon-unlock"></i><input type="password" placeholder="Password" name="password">
      </div>
    </div>
    <input type="submit" name="submit" >
  </form>
  </div>  
</body>
</html>