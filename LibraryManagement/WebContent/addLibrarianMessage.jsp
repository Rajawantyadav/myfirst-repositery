<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1 p {
	margin-top: 150px;
	color: green;
	font-size: xx-large;
}

#view, #back {
	margin-top: 150px;
}

button a {
	color: yellow;
	font-size: large;
	text-decoration: none;
}

button a:hover {
	color: red;
	font-size: large;
	text-decoration: none;
}
</style>
</head>
<body>


	<jsp:include page="index2.jsp"></jsp:include>
	<div class="container-fluid">
		<h1 class="col-md-offset-5">
			<p>Librarian data has been inserted Successfully</p>
		</h1>

		<button type="button" class="btn btn-primary col-md-offset-5"
			id="view">
			<a href="ViewLibrarian"><span
				class="glyphicon glyphicon-circle-arrow-left"></span> View Librarian</a>
		</button>


		<button type="button" class="btn btn-primary col-md-offset-3"
			id="back">
			<a href="AddLibrarian.jsp"><span
				class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
		</button>
	</div>

</body>
</html>