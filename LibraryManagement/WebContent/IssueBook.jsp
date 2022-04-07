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
		var studentId = document.getElementById('sid').value;
		var studentName = document.getElementById('sname').value;
		var studentContact = document.getElementById('scontact').value;

		if (bookId == "") {
			document.getElementById('bids').innerHTML = "**Book Id field can not be empty !!";
			return false;
		} else if (isNaN(bookId)) {
			document.getElementById('bids').innerHTML = "**Book Id field Must be number !!";
			return false;
		} else if (bookName == "") {
			document.getElementById('bnm').innerHTML = "**Book Name field can not be empty !!";
			return false;
		} else if (!isNaN(bookName)) {
			document.getElementById('bnm').innerHTML = "**Book name can't be number !!";
			return false;
		} else if (studentId == "") {
			document.getElementById('sids').innerHTML = "**Student Id field can not be empty !!";
			return false;
		} else if (isNaN(studentId)) {
			document.getElementById('sids').innerHTML = "**Student Id must  be number !!";
			return false;
		} else if (studentName == "") {
			document.getElementById('snm').innerHTML = "**Student Name field can not be empty !!";
			return false;
		} else if (!isNaN(studentName)) {
			document.getElementById('snm').innerHTML = "**Student Name name can't be number !!";
			return false;
		} else if (studentContact == "") {
			document.getElementById('scont').innerHTML = "**Student Contact field can not be empty !!";
			return false;
		} else if (isNaN(studentContact)) {
			document.getElementById('scont').innerHTML = "**Student Contact field Must be number !!";
			return false;
		} else if (studentContact.length != 10) {
			document.getElementById('scont').innerHTML = "**Student Contact Must be 10 digit number !!";
			return false;
		}
	}
</script>
</head>

<body>
	<jsp:include page="index2.jsp"></jsp:include>
	<div class="container row">

		<form action="IsuueBook" method="post"
			class="col-xs-6 col-md-offset-5" onsubmit="return validation();">
			<h2>Issue Book</h2>
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
					placeholder="Enter Book name"> <span id="bnm"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="s_id">Student Id:</label> <input type="text"
					class="form-control" name="sid" id="sid"
					placeholder="Enter Student Id"> <span id="sids"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>
			<div class="form-group">
				<label for="name">Student Name:</label> <input type="text"
					class="form-control" name="name" id="sname"
					placeholder="Enter Student name"> <span id="snm"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>


			<div class="form-group">
				<label for="contact">Student Contact:</label> <input type="text"
					class="form-control" name="contact" id="scontact"
					placeholder="Enter Student Contact"> <span id="scont"
					style="color: red; font-size: small; font-weight: bold;"></span>
			</div>

			<button type="submit" class="btn btn-primary">
				<span class="glyphicon glyphicon-ok-circle"></span> IssueBook
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