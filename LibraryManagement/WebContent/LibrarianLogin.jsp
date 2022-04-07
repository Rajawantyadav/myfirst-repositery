<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
form {
	border: 4px solid yellow;
	margin-top: 150px;
	background-color: rgba(0, 0, 0, 0.8);
	border-radius: 20px;
}

form h2 {
	color: yellow;
	font-size: xx-large;
}

label {
	color: yellow;
}

#back a {
	color: white;
	text-decoration: none;
}
</style>
<script type="text/javascript">
	function validation() {

		var email = document.getElementById('email').value;
		var password = document.getElementById('Passw').value;
		if (email == "") {
			document.getElementById('eml').innerHTML = "**Email field can not be empty !!";
			return false;

		} else if (password == "") {
			document.getElementById('pass').innerHTML = "**password field can not be empty !!";
			return false;
		} else {
			return true;
		}

	}
</script>

</head>
<body>
	<jsp:include page="index2.jsp"></jsp:include>

	<div class="container row">
		<form action="librarianLogin" class="col-xs-6 col-md-offset-5"
			method="post" onsubmit="return validation();">
			<h2>Librarian Login Form</h2>
			<hr />
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" placeholder="Enter email" name="email"
					id="email"> <span id="eml"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" placeholder="Enter password" name="pwd"
					id="Passw"> <span id="pass"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="remember">
					Remember me</label>
			</div>
			<br />
			<button type="submit" class="btn btn-primary">
				<span class="glyphicon glyphicon-log-in"></span> Login
			</button>
			<button type="button" class="btn btn-primary col-md-offset-8"
				id="back">
				<a href="index.jsp"><span
					class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
			</button>
		</form>
	</div>



</body>
</html>
