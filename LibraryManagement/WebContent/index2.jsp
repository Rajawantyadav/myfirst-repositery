<!DOCTYPE html>
<html lang="en">
<head>
<title>Library Management System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<!--font awesome  -->
	<script defer src="https://use.fontawesome.com/releases/v5.8.2/js/all.js" integrity="sha384-DJ25uNYET2XCl5ZF++U8eNxPWqcKohUUBUpKGlNLMchM7q4Wjg2CUpjHLaL8yYPH" crossorigin="anonymous"></script>
	<!--Google fonts  -->
	<link href="https://fonts.googleapis.com/css?family=Special+Elite&display=swap" rel="stylesheet">
</head>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

body {
	background-image: url("lib5.jpg");
	font-family: 'Special Elite', cursive;
}

#logo {
	background-color: rgba(135, 20, 231, 0.5);
}
#myNavbar a{

color: white;
font-size: large;
}
#myNavbar a:hover{
background-color:rgba(0,0,0,0.8);
color: red;
font-size: large;
}
</style>
<body>

	<div class="container-fluid">
		<nav class="navbar bg-primary">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<img class="navbar-brand img-circle" src="student1.png" id="logo"></img>

				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp"><i class="fas fa-house-damage"></i></a></li>
						<li><a href="about.jsp">About</a></li>
						<!-- <li><a href="contact.jsp">Contact</a></li> -->
					</ul>
					<div class="dropdown nav navbar-nav navbar-right"">
						<button class="btn btn-danger btn-lg dropdown-toggle "
							type="button" data-toggle="dropdown">
							<span class="glyphicon glyphicon-log-in"></span> Login <span
								class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="AdminLogin.jsp" style=" color:red;">Admin Login</a></li>
							<li><a href="LibrarianLogin.jsp" style=" color: red;">Librarian Login</a></li>

						</ul>

					</div>
		</nav>

		
	</div>

</body>
</html>