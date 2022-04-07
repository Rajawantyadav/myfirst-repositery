<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Section</title>
<style type="text/css">
#container {
	margin-top:100px;
	background-color: rgba(0, 0, 0, 0.8);
	
	border: 4px solid yellow;
	border-radius: 25px;
}

.b {
	height: 60px;
	background-color: rgba(0, 0, 0, 1.5);
}

.anchor {
	font-size: x-large;
	color: blue;
}

.anchor:hover {
	font-size: x-large;
	color: red;
	text-decoration: none;
	display: block;
}

#heading1 {
	color: yellow;
	font-size: xx-large;
}
</style>
</head>

<body>
	<jsp:include page="index2.jsp"></jsp:include>
		<div class="container-fluid">

	<div class="col-xs-4 col-xs-offset-4" id="container">
		<h2 id="heading1" class="col-xs-offset-2">Admin Section</h2>
		<hr />
		<button type="button" class="btn  btn-block b">
			<a href="AddLibrarian.jsp" class="anchor">Add Librarian</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="ViewLibrarian" class="anchor">ViewLibrarian</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="DeleteLibrarian.jsp" class="anchor">Delete Librarian</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="AdminLogout" class="anchor">Logout</a>
		</button>

	</div>
</div>

</body>
</html>