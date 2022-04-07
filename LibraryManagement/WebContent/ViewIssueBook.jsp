<%@page import="pojoClasses.IssueBook"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Librarian Detalis</title>
<style type="text/css">
table{
margin-top:100px;
border:4px solid yellow;

background-color: white;
}
table thead{

color:yellow;
background-color:rgba(0,0,0,0.8) ;
font-size: x-large;
}
table tbody{

color:red;
background-color:rgba(0,0,0,0.8) ;
font-size: large;

}
p{
text-align: center;
color: yellow;
background-color:rgba(0,0,0,0.8) ;
font-size: xx-large;

}
button a{
color: yellow;
font-size: large;

}
button a:hover{
color: red;
font-size: large;

}


</style>

</head>

<body>
<jsp:include page="index2.jsp"></jsp:include>
	<div class="col-xs-6 col-lg-offset-2">
		<%
			List<IssueBook> value = new ArrayList<IssueBook>();
			value = (ArrayList<IssueBook>) request.getAttribute("values");
		%>
		
		<table class="table" id="tb">
			<thead>
			<tr >
			<th colspan="5" ><p>Book Details</p></th>
			</tr>
				<tr>
					<th>BookId</th>
					<th>BookName</th>	
					<th>StudentId</th>
					<th>StudentName</th>
					<th>StudentContact</th>
					
				</tr>
			</thead>
			<tbody>

			<%
				for (IssueBook valuess : value) {
			%>
			

				<tr>
					<td>
						<%
							out.print(valuess.getBookId());
						%>
					</td>
					<td>
						<%
							out.print(valuess.getBookName());
						%>
					</td>
					<td>
						<%
							out.print(valuess.getStudentId());
						%>
					</td>
					<td>
						<%
							out.print(valuess.getStudentName());
						%>
					</td>
					<td>
						<%
							out.print(valuess.getStudentContact());
						%>
					</td>
					
				</tr>

		
			<%
				}
			%>
		</tbody>
		</table>
		 <button type="button" class="btn btn-primary  col-md-offset-10" id="back"><a href="LibrarianSection.jsp"><span class="glyphicon glyphicon-circle-arrow-left"></span> Back</a></button>
	</div>
</body>
</html>