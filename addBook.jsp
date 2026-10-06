<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Add New Book</title>

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

background:linear-gradient(135deg,#08131f,#0d1b2a,#132f4c);
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:40px;

}

.container-box{

width:800px;
background:rgba(255,255,255,.08);
backdrop-filter:blur(18px);
padding:35px;
border-radius:20px;
box-shadow:0 15px 35px rgba(0,0,0,.4);

}

h2{

text-align:center;
color:#00d4ff;
margin-bottom:30px;

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

label{

color:white;
font-weight:500;
margin-bottom:8px;

}

.btn-save{

width:100%;
padding:14px;
background:#00d4ff;
border:none;
border-radius:10px;
font-size:18px;
font-weight:600;
color:#08131f;
transition:.3s;

}

.btn-save:hover{

background:#00b8df;
transform:translateY(-2px);

}

.btn-back{

width:100%;
margin-top:15px;

}

</style>

</head>

<body>

<div class="container-box">

<h2>

<i class="bi bi-book-half"></i>

Add New Book

</h2>

<form action="AddBookServlet" method="post" enctype="multipart/form-data">

<div class="row">

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

<label>Author</label>

<input
type="text"
name="author"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Category</label>

<input
type="text"
name="category"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Publisher</label>

<input
type="text"
name="publisher"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Price</label>

<input
type="number"
step="0.01"
name="price"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Quantity</label>

<input
type="number"
name="quantity"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label>Available</label>

<input
type="number"
name="available"
class="form-control"
required>

</div>

<div class="col-12 mb-4">

<label>Book Cover Image</label>

<input
type="file"
name="bookImage"
class="form-control">

</div>

</div>

<button
type="submit"
class="btn-save">

<i class="bi bi-plus-circle"></i>

Save Book

</button>

<a
href="adminDashboard.jsp"
class="btn btn-secondary btn-back">

<i class="bi bi-arrow-left"></i>

Back to Dashboard

</a>

</form>

</div>

</body>

</html>