<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="bean.StudentBean" %>

<%
StudentBean student = (StudentBean) session.getAttribute("student");

if(student == null){
    response.sendRedirect("studentLogin.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#071A35;
color:white;
}

.header{
height:70px;
background:#0b2548;
display:flex;
justify-content:space-between;
align-items:center;
padding:0 40px;
box-shadow:0 5px 20px rgba(0,0,0,.3);
}

.logo{
font-size:28px;
font-weight:bold;
color:#22d3ee;
}

.user{
font-size:16px;
}

.container{
display:flex;
}

.sidebar{
width:250px;
height:calc(100vh - 70px);
background:#0d2140;
padding-top:25px;
}

.sidebar a{
display:block;
padding:16px 25px;
text-decoration:none;
color:white;
transition:.3s;
}

.sidebar a:hover{
background:#12376b;
padding-left:35px;
}

.main{
flex:1;
padding:35px;
}

.cards{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:25px;
margin-bottom:35px;
}

.card{
background:#102d57;
padding:30px;
border-radius:15px;
text-align:center;
transition:.3s;
}

.card:hover{
transform:translateY(-5px);
box-shadow:0 0 15px cyan;
}

.card h2{
font-size:35px;
color:#22d3ee;
margin-bottom:10px;
}

.welcome{
background:#102d57;
padding:30px;
border-radius:15px;
}

.btn{
display:inline-block;
margin-top:20px;
padding:12px 20px;
background:#22d3ee;
color:#002244;
text-decoration:none;
border-radius:8px;
font-weight:bold;
}

.btn:hover{
background:#06b6d4;
}

</style>

</head>

<body>

<div class="header">

<div class="logo">
AETHERIS LIBRARY
</div>

<div class="user">

Welcome,
<b><%= student.getName() %></b>

</div>

</div>

<div class="container">

<div class="sidebar">

<a href="DashBoard.html">🏠 Dashboard</a>

<a href="viewBooks.jsp">📚 View Books</a>

<a href="issueBook.jsp">📖 Issue Book</a>

<a href="returnBook.jsp">🔄 Return Book</a>

<a href="profile.jsp">👤 My Profile</a>

<a href="LogoutServlet">🚪 Logout</a>

</div>

<div class="main">

<div class="cards">

<div class="card">

<h2>250</h2>

<p>Total Books</p>

</div>

<div class="card">

<h2>18</h2>

<p>Issued Books</p>

</div>

<div class="card">

<h2>232</h2>

<p>Available Books</p>

</div>

</div>

<div class="welcome">

<h2>Welcome to Aetheris Library</h2>

<br>

<p>

Hello <b><%= student.getName() %></b>,

Welcome to the Library Management System.

Use the navigation menu to:

</p>

<br>

<ul>

<li>Search Books</li>

<li>Issue Books</li>

<li>Return Books</li>

<li>View Your Profile</li>

<li>Logout Securely</li>

</ul>

<a href="viewBooks.jsp" class="btn">

Browse Books

</a>

</div>

</div>

</div>

</body>
