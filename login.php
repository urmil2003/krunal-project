<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Kite Beauty</title>
    <style type="text/css">
        input[type="text"]{
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
                        <form >
                            

                            <div class="control-group">
                                <input type="text"name="username" class="form-control border-0 p-4" id="username" placeholder="Enter User Name"
                                    required="required"  />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="password" class="form-control border-0 p-4" id="password" placeholder="Enter Password" name="password" 
                                    required="required" />
                                <p class="help-block text-danger"></p>
                            </div>
                                    
                            <div>
                                <button style="width:150px;" class="btn btn-primary py-3 px-4" type="submit" id="sendMessageButton">Login
                                    </button>
                            </div>
                        </form>
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