


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Wedding Dress Rent Store</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
<!--
.style9 {font-size: 95%; font-weight: bold; color: #003300; font-family: Verdana, Arial, Helvetica, sans-serif; }
.style3 {font-weight: bold}
-->
</style>
<script src="../SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style10 {color: #FFFFFF}
.style12 {font-weight: bold}
-->
</style>
</head>
<body>

<div id="wrapper">
  <?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
?>

  
  <div id="content">
    <h2><span style="color:#003300"> User Management</span></h2>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="27" bgcolor="#003300"><span class="style10"><strong>User Profile Update</strong></span></td>
      </tr>
      <tr>
        <td height="26"><form id="form1" name="form1" method="post" action="InsertUser.php">
            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
			<tr>
          <td height="28"><div align="left">Customer Name:</div></td>
          <td><span id="sprytextfield3">
            <label>
            <input type="text" name="txtName" id="txtName" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="69"><div align="left">Address:</div></td>
          <td><span id="sprytextarea1">
            <label>
            <textarea name="txtAddress" id="txtAddress" cols="35" rows="3"></textarea>
            </label>
          <span class="textareaRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="37"><div align="left">City:</div></td>
          <td><label>
            <select name="cmbCity" id="cmbCity">
              <option>Dhaka</option>
              <option>Chittagong</option>
							<option>Rajshashi</option>
							<option>Comilla</option>
							<option>Jessor</option>
							<option>Sylhet</option>
							<option>Dinajpur</option>
							<option>Khulna</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="29">Email ID:</td>
          <td><span id="sprytextfield4">
            <label>
            <input type="text" name="txtEmail" id="txtEmail" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="27">Mobile Number:</td>
          <td><span id="sprytextfield5">
            <label>
            <input type="text" name="txtMobile" id="txtMobile" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="29">Gender:</td>
          <td><label>
            <select name="rdGender" id="rdGender">
              <option>Male</option>
              <option>Female</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="29">Birth Date:</td>
          <td><span id="sprytextfield9">
            <label>
            <input type="text" name="txtDate" id="txtDate" onclick="ds_sh(this);" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
              <tr>
                <td height="32" >User Name:</td>
                <td><span id="sprytextfield1">
                  <label>
                  <input type="text" name="txtUserName" id="txtUserName" />
                  </label>
                  <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
              <tr>
                <td height="34">Password:</td>
                <td><span id="sprytextfield2">
                  <label>
                  <input type="password" name="txtPassword" id="txtPassword" />
                  </label>
                  <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="button" id="button" value="Submit" />
                </label></td>
              </tr>
</table>
        </form></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="1" bordercolor="#003300" >
            <tr>
              <th height="32" bgcolor="#BDE0A8" class="style3"><div align="left" class="style9 style5"><strong>Id</strong></div></th>
              <th bgcolor="#BDE0A8" class="style3"><div align="left" class="style9 style5"><strong>Customer Name</strong></div></th>
			  <th bgcolor="#BDE0A8" class="style3"><div align="left" class="style9 style5"><strong>Address</strong></div></th>
			  <th bgcolor="#BDE0A8" class="style3"><div align="left" class="style9 style5"><strong>UserName</strong></div></th>
              <th bgcolor="#BDE0A8" class="style3"><div align="left" class="style9 style5"><strong>Edit</strong></div></th>
              <th bgcolor="#BDE0A8" class="style3"><div align="left" class="style12">Delete</div></th>
            </tr>
            <?php
			$username=$_SESSION['login'];
// Establish Connection with Database
$con = mysql_connect("localhost","root");
// Select Database
mysql_select_db("shopping", $con);
// Specify the query to execute
$sql = "select * from customer_registration";
// Execute query
$result = mysql_query($sql,$con);
// Loop through each records 
while($row = mysql_fetch_array($result))
{
$Id=$row['CustomerId'];
$CustomerName=$row['CustomerName'];
$Address=$row['Address'];
$UserName=$row['UserName'];
$cnt=1;
}

?>
            <tr>
              <td class="style3"><div align="left" class="style9 style5"><strong><?php echo $Id;?></strong></div></td>
			   <td class="style3"><div align="left" class="style9 style5"><strong><?php echo $CustomerName;?></strong></div></td>
			   <td class="style3"><div align="left" class="style9 style5"><strong><?php echo $Address;?></strong></div></td>
              <td class="style3"><div align="left" class="style9 style5"><strong><?php echo $UserName;?></strong></div></td>
			  <td class="style3"><div align="left" class="style9 style5"><strong><a href="EditUser.php?CustomerId=<?php echo $Id;?>">Edit</a></strong></div></td>
              <td class="style3"><div align="left" class="style9 style5"><strong><a href="DeleteUser.php?CustomerId=<?php echo $Id;?>">Delete</a></strong></div></td>
            </tr>
            <?php

// Retrieve Number of records returned

?>
            
            <?php
// Close the connection
mysql_close($con);
?>
        </table></td>
      </tr>
     
    </table>
    <p align="justify">&nbsp;</p>
    <table width="100%" border="0" cellspacing="3" cellpadding="3">
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
       <tr>
        <td><p><img src="img/Saress.jpg" alt="box" width="100" height="100" hspace="10" align="left" class="imgleft" title="box" /></p></td>
        <td><p><img src="img/Lehenga.jpg" alt="box" width="100" height="100" hspace="10" align="left" class="imgleft" title="box" /></p></td>
        <td><p><img src="img/Panjabi.jpg" alt="box" width="100" height="100" hspace="10" align="left" class="imgleft" title="box" /></p></td>
      </tr>
      <tr>
        <td height="26" bgcolor="#BCE0A8"><div align="center" class="style9">Wedding Saress</div></td>
        <td bgcolor="#BCE0A8"><div align="center" class="style9">Wedding Lehenga</div></td>
        <td bgcolor="#BCE0A8"><div align="center" class="style9">Wedding Panjabi</div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </div>
 <?php
 include "Right.php";
 ?>
  <div style="clear:both;"></div>
   <?php
 include "Footer.php";
 ?>
</div>

</body>
</html>
