<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Librarian</title>
<style type="text/css">
form {
	border: 4px solid yellow;
	margin-top: 120px;
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
	var name = document.getElementById('name').value;
	var email = document.getElementById('email').value;
	var password = document.getElementById('psw').value;
	var city = document.getElementById('city').value;
	var contact = document.getElementById('contact').value;
	if(name==""){
		document.getElementById('nm').innerHTML = "**Name field can not be empty !!";
		return false;
	}else if(!isNaN(name)){
		
		document.getElementById('nm').innerHTML = "**Name field can not be number !!";
		return false;
	}else
	if (email== "") {
		document.getElementById('eml').innerHTML = "**Email field can not be empty !!";
		return false;
	}else
	if(password==""){
		document.getElementById('pass').innerHTML = "**Password field can not be empty !!";
		return false;
	}else
	if(city==""){
		document.getElementById('cty').innerHTML = "**City field can not be empty !!";
		return false;
	}else
	if(contact==""){
		document.getElementById('cont').innerHTML = "**contact field can not be empty !!";
		return false;
	}else 
		if(isNan(contact)){
		document.getElementById('cont').innerHTML = "**contact must be number empty !!";
		return false;
	}else 
		if(contact.length!=10){
		document.getElementById('cont').innerHTML = "**contact must be 10 digits number  !!";
		return false;
	}
	
}

</script>
</head>

<body>
	<jsp:include page="index2.jsp"></jsp:include>
	<div class="container row">

		<form action="addLibrarian" method="post"
			class="col-xs-6 col-md-offset-5" onsubmit="return validation();">
			<h2>Add Librarian</h2>
			<hr />
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" name="name" id="name" placeholder="Enter name">
			<span id="nm" style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" name="email"  id="email" placeholder="Enter email">
					<span id="eml"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="password" id="psw" placeholder="Enter password">
					<span id="pass"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="city">City:</label> <input type="text"
					class="form-control" name="city" id="city" placeholder="Enter city">
					<span id="cty"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="contact">Contact:</label> <input type="text"
					class="form-control" name="contact" id="contact"
					placeholder="Enter Contact nuber">
					<span id="cont"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<br />

			<button type="submit" class="btn btn-primary">
				<span class="glyphicon glyphicon-plus"></span> Add
			</button>
			<button type="button" class="btn btn-primary col-md-offset-8"
				id="back">
				<a href="AdminSection.jsp"><span
					class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
			</button>
		</form>
	</div>


</body>
</html>