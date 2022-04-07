<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Section</title>
<style type="text/css">
#container {
	
	background-color: rgba(0, 0, 0, 0.8);
	margin-top:100px;
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
	background-color: rgba(0, 0, 0, 0.8);
	display: block;
}

#heading {
	color: yellow;
	font-size: xx-large;
}
</style>
</head>

<body>
	<jsp:include page="index2.jsp"></jsp:include>
	<div class="container-fluid">

	<div class="col-xs-4 col-xs-offset-4" id="container">
		<h2 class="col-md-offset-2" id="heading">Librarian Section</h2>
		<hr />

		<button type="button" class="btn  btn-block b">
			<a href="AddBook.jsp" class="anchor">Add Book</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="ViewBook" class="anchor">View Book</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="DeleteBook.jsp" class="anchor">Delete Book</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="IssueBook.jsp" class="anchor">Issue Book</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="ReturnBook.jsp" class="anchor">Return Book</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="ViewIssueBook" class="anchor">View Issue Book</a>
		</button>
		<br />
		<br />
		<button type="button" class="btn  btn-block b">
			<a href="LibrarianLogOut" class="anchor">Logout</a>
		</button>

	</div>

</div>
</body>
</html>