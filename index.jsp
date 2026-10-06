<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Book Portal</title>

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
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(180deg,#051224,#071b37,#081a39);
overflow:hidden;
}

.container{

width:420px;
padding:35px;
border-radius:25px;
background:#0b1f43;
box-shadow:0 0 30px rgba(0,255,255,.15);
border:1px solid rgba(255,255,255,.08);

}

.logo{

font-size:22px;
font-weight:700;
color:#7fe5ff;
letter-spacing:2px;

}

.help{

float:right;
color:#d8d8d8;
font-size:22px;

}

.heading{

margin-top:90px;
text-align:center;

}

.heading h1{

font-size:40px;
color:white;
margin-bottom:10px;

}

.heading p{

font-size:12px;
letter-spacing:3px;
color:#8ca6cb;

}

.button-box{

margin-top:60px;
display:flex;
gap:15px;

}

.button-box a{

flex:1;
text-align:center;
text-decoration:none;
padding:15px;
border-radius:12px;
background:#142d56;
color:#bfe5ff;
font-weight:600;
transition:.4s;

}

.button-box a:hover{

background:#1fd4ff;
color:#001d36;
transform:translateY(-3px);

}

.footer{

margin-top:80px;
text-align:center;
color:#8fa7c5;
font-size:13px;

}

.footer a{

color:#bfe5ff;
text-decoration:none;
margin:0 10px;

}

.bottom{

margin-top:25px;
display:flex;
justify-content:space-around;
padding-top:20px;
border-top:1px solid rgba(255,255,255,.08);

}

.card{

text-align:center;
color:#8ea7c7;

}

.card span{

display:block;
font-size:28px;
margin-bottom:8px;

}

.card:hover{

color:#21d3ff;

}

</style>

</head>

<body>

<div class="container">

<div>

<span class="logo">AETHERIS</span>

<span class="help">?</span>

</div>

<div class="heading">

<h1>Book Portal</h1>

<p>SECURE INTELLECTUAL GATEWAY</p>

</div>

<div class="button-box">

<a href="studentLogin.jsp">
Student Login
</a>

<a href="adminLogin.jsp">
Admin Login
</a>

</div>

<div class="footer">

<a href="#">Forgot Password</a>

|

<a href="#">Support</a>

<br><br>

© 2026 Aetheris Education

</div>

<div class="bottom">

<div class="card">
<span>👨‍🎓</span>
Student
</div>

<div class="card">
<span>🛡️</span>
Admin
</div>

</div>

</div>

</body>
</html>