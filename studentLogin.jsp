<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login | Aetheris</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#04101f,#081d3d,#0d2c57);

}

.login-box{

width:420px;
background:#0b2145;
padding:35px;
border-radius:22px;
box-shadow:0 0 25px rgba(0,255,255,.15);

}

.logo{

text-align:center;
font-size:30px;
font-weight:bold;
color:#63dcff;
letter-spacing:2px;

}

.title{

text-align:center;
margin-top:15px;
margin-bottom:35px;

}

.title h2{

color:white;
font-size:32px;

}

.title p{

color:#90a8c8;
font-size:12px;
letter-spacing:2px;

}

.input-group{

margin-bottom:20px;

}

.input-group label{

display:block;
margin-bottom:8px;
font-size:13px;
color:#a6c4e4;
font-weight:600;

}

.input-box{

display:flex;
align-items:center;
background:#132f58;
padding:14px;
border-radius:12px;

}

.input-box i{

color:#6cdfff;
margin-right:10px;
font-size:18px;

}

.input-box input{

width:100%;
background:transparent;
border:none;
outline:none;
font-size:15px;
color:white;

}

.login-btn{

width:100%;
padding:15px;
border:none;
border-radius:12px;
margin-top:15px;
font-size:18px;
font-weight:bold;
cursor:pointer;
background:#1fd4ff;
color:#00243f;
transition:.4s;

}

.login-btn:hover{

transform:translateY(-2px);
box-shadow:0 0 20px #1fd4ff;

}

.links{

margin-top:18px;
display:flex;
justify-content:space-between;

}

.links a{

text-decoration:none;
color:#8ab7e0;
font-size:13px;

}

.links a:hover{

color:#1fd4ff;

}

.register{

margin-top:30px;
text-align:center;
color:#9fb7d5;

}

.register a{

text-decoration:none;
color:#1fd4ff;
font-weight:bold;

}

.back{

margin-top:25px;
text-align:center;

}

.back a{

text-decoration:none;
color:#b8d7ff;

}

</style>

</head>

<body>

<div class="login-box">

<div class="logo">
AETHERIS
</div>

<div class="title">

<h2>Student Login</h2>

<p>SECURE STUDENT ACCESS</p>

</div>

<form action="StudentLoginServlet" method="post">

<div class="input-group">

<label>Student ID</label>

<div class="input-box">

<i class="fa-solid fa-id-card"></i>

<input
type="text"
name="studentId"
placeholder="Enter Student ID"
required>

</div>

</div>

<div class="input-group">

<label>Password</label>

<div class="input-box">

<i class="fa-solid fa-lock"></i>

<input
type="password"
name="password"
placeholder="Enter Password"
required>

</div>

</div>

<button class="login-btn">
<i class="fa-solid fa-right-to-bracket"></i>
&nbsp; Login
</button>

</form>

<div class="links">

<a href="#">Forgot Password?</a>

<a href="index.jsp">Home</a>

</div>

<div class="register">

New Student?

<a href="registerStudent.jsp">
Register Here
</a>

</div>

<div class="back">

<a href="index.jsp">
← Back to Portal
</a>

</div>

</div>

</body>
</html>