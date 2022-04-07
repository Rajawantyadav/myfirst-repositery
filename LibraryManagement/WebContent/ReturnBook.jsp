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
		var bookId = document.getElementById('bid').value;
		var bookName = document.getElementById('bname').value;
		var StudentId = document.getElementById('sid').value;
		if (bookId == "") {
			document.getElementById('bids').innerHTML = "**Book Id field can not be empty !!";
			return false;
		} else if (isNaN(bookId)) {
			document.getElementById('bids').innerHTML = "**Book Id field Must be number !!";
			return false;
		} else if (bookName == "") {
			document.getElementById('bnames').innerHTML = "**Book Name field can not be empty !!";
			return false;
		} else if (!isNaN(bookName)) {
			document.getElementById('bnames').innerHTML = "**Book name can't be number !!";
			return false;
		} else if (StudentId == "") {
			document.getElementById('sids').innerHTML = "**Student Id field can not be empty !!";
			return false;
		} else if (isNaN(StudentId)) {
			document.getElementById('sids').innerHTML = "**Student Id field Must be number !!";
			return false;
		}
	}
</script>
</head>

<body>
	<jsp:include page="index2.jsp"></jsp:include>
	<div class="container row">

		<form action="ReturnBook" method="post"
			class="col-xs-6 col-md-offset-5" onsubmit="return  validation();">
			<h2>Return Book</h2>
			<hr />
			<div class="form-group">
				<label for="id">Book Id:</label> <input type="text"
					class="form-control" name="id" id="bid" placeholder="Enter Id">
				<span id="bids"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="bname">Book Name:</label> <input type="text"
					class="form-control" name="bname" id="bname"
					placeholder="Enter Book Name"> <span id="bnames"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="s_id">Student Id:</label> <input type="text"
					class="form-control" name="sid" id="sid"
					placeholder="Enter Student Id"> <span id="sids"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>


			<button type="submit" class="btn btn-primary">
				<span class="glyphicon glyphicon-share-alt"></span> ReturnBook
			</button>
			<button type="button" class="btn btn-primary col-md-offset-7"
				id="back">
				<a href="LibrarianSection.jsp"><span
					class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
			</button>
		</form>
	</div>


</body>
</html>