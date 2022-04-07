<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Librarian</title>
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
		var name = document.getElementById('name').value;

		if (name == "") {
			document.getElementById('nm').innerHTML = "**Name field can not be empty !!";
			return false;
		} else if (!isNaN(name)) {
			document.getElementById('nm').innerHTML = "**Name field can not be number !!";
			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="index2.jsp"></jsp:include>
	<div class="container row">

		<form action="deleteLibrarian" method="post"
			class="col-xs-6 col-md-offset-5" onsubmit="return validation();">
			<h2>Delete Librarian</h2>
			<hr />
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" placeholder="Enter Name" name="name" id="name">
				<span id="nm"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<br /> <br />

			<button type="submit" class="btn btn-primary">
				<span class="glyphicon glyphicon-remove-sign"></span> Delete
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