<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
    <meta charset="utf-8">
    <title>BLOCKS - Bootstrap Dashboard Theme</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Carlos Alvarez - Alvarez.is">

    <!-- Le styles -->
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />

    <link href="css/login.css" rel="stylesheet">
    
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>    
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

    <style type="text/css">
      body {
        padding-top: 30px;
      }

      pbfooter {
        position:relative;
      }
    </style>
    
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
       
  	<!-- Google Fonts call. Font Used Open Sans & Raleway -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
<link href="css1/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css2/style.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/flexslider.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/sequence.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
<!--Special Styles-->
<link rel="stylesheet" type="text/css" href="css/style.css" title="default" media="screen">
<link rel="alternate stylesheet" type="text/css" href="css/elegant.css" title="elegant" media="screen">
<link rel="alternate stylesheet" type="text/css" href="css/modern.css" title="modern" media="screen">
<link rel="alternate stylesheet" type="text/css" href="css/colorfull.css" title="colorfull" media="screen">
<!--Responsive-->
<link rel="stylesheet" type="text/css" href="css/responsitive.css" media="all">
  	<!-- Jquery Validate Script -->
    <script type="text/javascript" src="js/jquery.validate.js"></script>

  	<!-- Jquery Validate Script - Validation Fields -->
		<script type="text/javascript">
		
		$.validator.setDefaults({
			submitHandler: function() { window.open ('dashboard.html','_self',false) }
		});
		
		$().ready(function() {
		
			// validate signup form on keyup and submit
			$("#signupForm").validate({
				rules: {
					
					username: {
						required: true,
						minlength: 1,
                        
					},
					password: {
						required: true,
						minlength: 1,
                        
					},
					
				messages: {
					username: {
						required: "Please enter a username",
						minlength: "Your username must consist of at least 1 character",
                        remote:"wrong username"
					},
					password: {
						required: "Please provide a password",
						minlength: "Your password must be at least 1 character long",
                        remote:"wrong password"
					},
					
				}
                },
                  submitHandler: function(form) {
                             form.submit();}
			});
		
			
		
			
		});
		</script>

</head>

<style>

    .pbfooter {
        position:relative;
    }

</style>
<style>


/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: yellow;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 450px;
    top: 150px;
    width: 50%; /* Full width */
    height: 80%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color:white; /* Fallback color */
    background-color: rgba(255,255,255,0.7); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}



</style>
  <body style="background:url('images/wallpaper.jpg') no-repeat center center; height:700px;">
           
<div class="container">
        <div class="row">
   		<div class="col-lg-offset-4 col-lg-4" style="margin-top:100px">
   			<div class="block-unit" style="text-align:center; padding:8px 8px 8px 8px;">
   				<img src="images/logo1v1.png" width="300px" height="150px" alt="" class="img-circle">
   				<br>
   				<br>
					<form class="cmxform" id="signupForm" method="get" action="login">
						<fieldset>
							<p>
								<input id="username" name="username" type="text" placeholder="Username" value=""><br>
								<input id="password" name="password" type="password" placeholder="Password" value="">
							</p>
								<input class="submit btn-success btn btn-large" type="submit" value="Login"><input type="button" class="submit btn-success btn btn-large" type="submit" value="register" onclick="document.getElementById('id02').style.display='block'">
								</fieldset>
					</form>
								<div id="id02" class="modal">
  
  <form class="cmxform" action="register" method="get">
    <div class="imgcontainer">
      <span onclick= "document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>

    </div>

    <div class="container">
      <label style="color:orange;"><b>Nom</b></label><br>
      <input type="text" placeholder="votre nom" name="name" required><br>
	  <label style="color:orange;"><b>Prenom</b></label><br>
      <input type="text" placeholder=" votre Prenom" name="lastname" required><br>
<label style="color:orange;"><b>Adress</b></label><br>
      <input type="text" placeholder="votre email" name="adress" required><br>
	  <label style="color:orange;"><b>Téléphone</b></label><br>
      <input type="text" placeholder="votre numéro de téléphone" name="tel" required><br>
      <label style="color:orange;"><b>Username</b></label><br>
      <input type="text" placeholder="Enter unsername" name="username" required><br>
      <label style="color:orange;"><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="password" required><br>
	   
        
</br>

 <button name="submit" type="submit" class="btn btn-warning">send</button>
	  
    </div>

    
  </form>
  
</div> 
						
   			</div>

   		</div>


        </div>
    </div>



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    
  
</body></html>