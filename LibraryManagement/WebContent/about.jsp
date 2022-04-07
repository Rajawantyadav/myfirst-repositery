<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>About us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  .bg-1 { 
    background-color: rgba(0,0,0,0.1);
    color: #ffffff;
   
  }
  .bg-2 { 
    background-color: #474e5d;
    color: #ffffff;
    font-size: large;
  
    
  }
  .bg-3 { 
    background-color: #ffffff;
    color: #555555;
  }
#con {
    padding-top: 70px;
    padding-bottom: 70px;
  } 
  #fb,#inst{
  font-size: x-large;
  color:red;
  }
  </style>
</head>
<body>
<jsp:include page="index2.jsp"></jsp:include>
<div class="container bg-1 text-center" id="con">
  <h3>Who Am I?</h3>
  <img src="raj2.jpeg" class="img-circle" alt="Bird" width="350" height="400">
  <h3>I'm Rajawant Yadav</h3>
</div>

<div class="container-fluid bg-2 text-center">
  <h3>What Am I?</h3>
  <p>I'm Rajawant yadav ,I,m a student of BCA (Bachelor Of Computer Application) ,I'm about To Complete My BCA after Two Months ,I'v worked hard to develop this Application ,Each and EveryThing developed in Java,jsp,and Servlet on MVC(Model View And Controller )  </p>
</div>

<div class="container-fluid bg-3 text-center">
  <h3>Where To Find Me?</h3><br/><br/>
  <p id="fb"><a href="https://www.facebook.com/rajawant.rajawantyadav"><i class="fab fa-facebook"></i>Facebook</a></p>
  <p id="inst"><a href="https://www.instagram.com/rajawantyadav"><i class="fab fa-instagram"></i>instagram</a></p>
  
</div>

</body>
</html>
