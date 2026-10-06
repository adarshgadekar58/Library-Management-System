<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login | Aetheris Library</title>

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
border-radius:20px;
box-shadow:0 0 25px rgba(0,255,255,.15);
}

.logo{
text-align:center;
font-size:28px;
font-weight:bold;
color:#49d9ff;
letter-spacing:2px;
margin-bottom:15px;
}

.title{
text-align:center;
margin-bottom:30px;
}

.title h2{
color:#fff;
}

.title p{
color:#a6bfd8;
font-size:12px;
letter-spacing:2px;
margin-top:5px;
}

.input-group{
margin-bottom:20px;
}

.input-group label{
display:block;
color:#b8d4f1;
margin-bottom:8px;
font-size:14px;
}

.input-box{
display:flex;
align-items:center;
background:#13335d;
padding:14px;
border-radius:10px;
}

.input-box i{
color:#52dcff;
margin-right:10px;
}

.input-box input{
width:100%;
border:none;
outline:none;
background:none;
color:white;
font-size:15px;
}

.login-btn{
width:100%;
padding:15px;
border:none;
border-radius:10px;
margin-top:15px;
background:#18d4ff;
color:#00253d;
font-size:18px;
font-weight:bold;
cursor:pointer;
transition:.3s;
}

.login-btn:hover{
box-shadow:0 0 20px #18d4ff;
transform:translateY(-2px);
}

.links{
display:flex;
justify-content:space-between;
margin-top:18px;
}

.links a{
color:#8cb3d8;
text-decoration:none;
font-size:13px;
}

.back{
text-align:center;
margin-top:25px;
}

.back a{
text-decoration:none;
color:#18d4ff;
}

</style>

</head>

<body>

<div class="login-box">

<div class="logo">
AETHERIS
</div>

<div class="title">
<h2>Administrator Login</h2>
<p>LIBRARY MANAGEMENT SYSTEM</p>
</div>

<form action="AdminLoginServlet" method="post">

<div class="input-group">
<label>Username</label>

<div class="input-box">
<i class="fa-solid fa-user-shield"></i>

<input type="text"
name="username"
placeholder="Enter Username"
required>

</div>
</div>

<div class="input-group">

<label>Password</label>

<div class="input-box">

<i class="fa-solid fa-lock"></i>

<input type="password"
name="password"
placeholder="Enter Password"
required>

</div>

</div>

<button class="login-btn">
<i class="fa-solid fa-right-to-bracket"></i>
 Login
</button>

</form>

<div class="links">

<a href="#">Forgot Password?</a>

<a href="index.jsp">Home</a>

</div>

<div class="back">

<a href="index.jsp">← Back to Portal</a>

</div>

</div>

</body>
</html>