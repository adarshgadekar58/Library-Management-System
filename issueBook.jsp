<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Book</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:linear-gradient(135deg,#050816,#081a2d,#0b2d50);

min-height:100vh;

display:flex;

justify-content:center;

align-items:center;

padding:40px;

}

.container-box{

width:900px;

background:rgba(255,255,255,.08);

backdrop-filter:blur(20px);

border:1px solid rgba(255,255,255,.12);

border-radius:25px;

padding:40px;

box-shadow:0 20px 40px rgba(0,0,0,.35);

}

h2{

text-align:center;

margin-bottom:35px;

color:#00d4ff;

font-weight:700;

}

label{

color:white;

margin-bottom:8px;

font-weight:500;

}

.form-control{

background:rgba(255,255,255,.08);

border:none;

color:white;

}

.form-control:focus{

background:rgba(255,255,255,.12);

color:white;

box-shadow:none;

border:1px solid #00d4ff;

}

.btn-issue{

width:100%;

padding:15px;

background:#00d4ff;

color:#05111f;

font-weight:600;

border:none;

border-radius:12px;

transition:.3s;

}

.btn-issue:hover{

transform:translateY(-3px);

background:#33e3ff;

}

.btn-back{

margin-top:15px;

width:100%;

}

</style>

</head>

<body>

<div class="container-box">

<h2>

<i class="bi bi-journal-plus"></i>

Issue Book

</h2>

<form action="IssueBookServlet" method="post">

<div class="row">

<div class="col-md-6 mb-3">

<label>Student ID</label>

<input
type="number"
name="studentId"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Student Name</label>

<input
type="text"
name="studentName"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Book ID</label>

<input
type="number"
name="bookId"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Book Name</label>

<input
type="text"
name="bookName"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Issue Date</label>

<input
type="date"
name="issueDate"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Return Date</label>

<input
type="date"
name="returnDate"
class="form-control"
required>

</div>

</div>

<button type="submit" class="btn-issue">

<i class="bi bi-check-circle"></i>

Issue Book

</button>

<a href="adminDashboard.jsp" class="btn btn-secondary btn-back">

<i class="bi bi-arrow-left"></i>

Back to Dashboard

</a>

</form>

</div>

</body>
</html>