<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

display:flex;
justify-content:center;
align-items:center;
height:100vh;
background:linear-gradient(135deg,#04101f,#081d3d,#0d2c57);

}

.container{

width:480px;
background:#0b2145;
padding:35px;
border-radius:20px;
box-shadow:0px 0px 25px rgba(0,255,255,.2);

}

h2{

text-align:center;
color:white;
margin-bottom:25px;

}

.input-group{

margin-bottom:18px;

}

label{

display:block;
margin-bottom:8px;
color:#b8d7ff;
font-size:14px;

}

input{

width:100%;
padding:14px;
border:none;
border-radius:10px;
background:#16345f;
color:white;
outline:none;
font-size:15px;

}

input::placeholder{

color:#8fb4df;

}

button{

width:100%;
padding:15px;
margin-top:15px;
border:none;
border-radius:10px;
background:#19d3ff;
font-size:18px;
font-weight:bold;
cursor:pointer;
transition:.3s;

}

button:hover{

background:#00b8e6;
box-shadow:0 0 20px cyan;

}

.login{

text-align:center;
margin-top:20px;

}

.login a{

color:#19d3ff;
text-decoration:none;

}

</style>

</head>

<body>

<div class="container">

<h2>Student Registration</h2>

<form action="RegisterStudentServlet" method="post">

<div class="input-group">

<label>Student ID</label>

<input
type="number"
name="sid"
placeholder="Enter Student ID"
required>

</div>

<div class="input-group">

<label>Student Name</label>

<input
type="text"
name="name"
placeholder="Enter Name"
required>

</div>

<div class="input-group">

<label>Email</label>

<input
type="email"
name="email"
placeholder="Enter Email"
required>

</div>

<div class="input-group">

<label>Phone</label>

<input
type="text"
name="phone"
placeholder="Enter Phone Number"
required>

</div>

<div class="input-group">

<label>Password</label>

<input
type="password"
name="password"
placeholder="Enter Password"
required>

</div>

<div class="input-group">

<label>Confirm Password</label>

<input
type="password"
name="confirmPassword"
placeholder="Confirm Password"
required>

</div>

<button type="submit">

Register

</button>

</form>

<div class="login">

Already Registered?

<a href="studentLogin.jsp">

Login Here

</a>

</div>

</div>

</body>
</html>