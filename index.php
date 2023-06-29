<?php
	session_start();

?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js">
    </script>
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Kite Beauty</title>
    <style type="text/css">
        input[type="text"]
        {
            width: 350px;
        }
        input[type="password"]{
            width: 350px;       
        }
    </style>
</head>
<body>
  <?php 
    include "include/cssData.php";
    include "include/headerData.php";
    ?>
	<div class="jumbotron jumbotron-fluid bg-jumbotron" style="margin-bottom: 90px;">
        <div class="container text-center py-5">
            <h3 class="text-white display-3 mb-4">Login</h3>
            <div class="d-inline-flex align-items-center text-white">
                <p class="m-0"><a class="text-white" href="">Home</a></p>
                <i class="far fa-circle px-3"></i>
                <p class="m-0">Login</p>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                
                <div class="col-lg-6 pt-5 pb-lg-5" style="margin-left: 370px;">
                    <div class="contact-form bg-light p-4 p-lg-5 my-lg-5">
                        <h6 class="d-inline-block text-white text-uppercase bg-primary py-1 px-2">Login</h6>
                        <h1 class="mb-4"></h1>
                        <div id="success"></div>
                        <form method="POST" onsubmit="return validation()" name="user">
                            
                            <div class="control-group">
                                <input type="text"class="form-control border-0 p-4" id="username" placeholder="Enter Username" name="username" required="required" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="password" class="form-control border-0 p-4" id="password" placeholder="Enter Password" name="password" required="required" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div>
                                <button style="width:150px;" class="btn btn-primary py-3 px-4" type="submit" id="sendMessageButton" name="b1" value="LogIn">LogIn
                                    </button>
                            </div>
                        </form>
<?php
$serverName="localhost";
$userName="root";
$password="";
$databaseName="admin";  
$conn = new mysqli($serverName,$userName,$password,$databaseName);
if($conn->connect_error)
{
    echo "DataBase is not connected";
}
$action=null;
$action=isset($_POST["b1"]);
if($action!=null)
{
    $action=$_POST["b1"];
    if($action=="LogIn")
    {
        $username=$_POST["username"];
        $password=$_POST["password"];
    
    $sql="select * from admin where username='$username' and password='$password'";
    $result=$conn->query($sql);
    $cnt=$result->num_rows;
        if($cnt>0)
        {
        	$_SESSION['admin']="data";
        	echo "<script>alert('Login successfully');document.location.href='admin/productcategory.php';
                </script>";
        }
        else
        {
            echo"<script>alert('Invalid details');document.location.href='index.php';</script>";
        }
    }
}
?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
    include "include/footerData.php";
?>
</body>
</html>