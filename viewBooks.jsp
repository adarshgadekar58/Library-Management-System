<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="bean.BookBean"%>
<%@ page import="dao.BookDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{
background:#071A35;
padding:30px;
}

.container{
width:95%;
margin:auto;
background:white;
padding:25px;
border-radius:10px;
box-shadow:0px 0px 10px gray;
}

h2{
text-align:center;
margin-bottom:20px;
color:#0b2145;
}

table{
width:100%;
border-collapse:collapse;
}

table th{
background:#0b2145;
color:white;
padding:12px;
}

table td{
padding:12px;
text-align:center;
border-bottom:1px solid #ddd;
}

tr:hover{
background:#f5f5f5;
}

.btn{
padding:8px 15px;
text-decoration:none;
border-radius:5px;
color:white;
}

.edit{
background:#28a745;
}

.delete{
background:#dc3545;
}

.back{
display:inline-block;
margin-top:20px;
background:#0b2145;
color:white;
padding:10px 20px;
text-decoration:none;
border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2>Library Books</h2>

<table>

<tr>

<th>Book ID</th>

<th>Book Name</th>

<th>Author</th>

<th>Category</th>

<th>Quantity</th>

<th>Edit</th>

<th>Delete</th>

</tr>

<%

BookDAO dao = new BookDAO();

ArrayList<BookBean> list = dao.getAllBooks();

for(BookBean b : list)
{

%>

<tr>

<td><%= b.getBookId() %></td>

<td><%= b.getBookName() %></td>

<td><%= b.getAuthor() %></td>

<td><%= b.getCategory() %></td>

<td><%= b.getQuantity() %></td>

<td>

<a href="editBook.jsp?id=<%=b.getBookId()%>"
class="btn edit">

Edit

</a>

</td>

<td>

<a href="DeleteBookServlet?id=<%=b.getBookId()%>"
class="btn delete"
onclick="return confirm('Delete this book?')">

Delete

</a>

</td>

</tr>

<%

}

%>

</table>

<a href="studentDashboard.jsp" class="back">

← Back to Dashboard

</a>

</div>

</body>

</html>