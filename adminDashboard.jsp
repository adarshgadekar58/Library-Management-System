<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="bean.AdminBean" %>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

AdminBean admin = (AdminBean) session.getAttribute("admin");

if(admin == null){
    response.sendRedirect("adminLogin.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Library Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="dashboard.css">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>

<body>

<div class="wrapper">

    <!-- Sidebar -->

    <div class="sidebar">

        <h2 class="logo">
            <i class="bi bi-book-half"></i>
            LibraryHub
        </h2>

        <ul>

            <li class="active">
                <a href="adminDashboard.jsp">
                    <i class="bi bi-grid-fill"></i>
                    Dashboard
                </a>
            </li>

            <li>
                <a href="addBook.jsp">
                    <i class="bi bi-plus-circle-fill"></i>
                    Add Book
                </a>
            </li>

            <li>
                <a href="viewBooks.jsp">
                    <i class="bi bi-book-fill"></i>
                    View Books
                </a>
            </li>

            <li>
                <a href="issueBook.jsp">
                    <i class="bi bi-journal-arrow-up"></i>
                    Issue Book
                </a>
            </li>

            <li>
                <a href="returnBook.jsp">
                    <i class="bi bi-arrow-counterclockwise"></i>
                    Return Book
                </a>
            </li>

            <li>
                <a href="reports.jsp">
                    <i class="bi bi-bar-chart-fill"></i>
                    Reports
                </a>
            </li>

            <li>
                <a href="LogoutServlet">
                    <i class="bi bi-box-arrow-right"></i>
                    Logout
                </a>
            </li>

        </ul>

    </div>

    <!-- Main -->

    <div class="main">

        <!-- Header -->

        <div class="header">

            <h2>
                Welcome <%= admin.getUsername() %> 👋
            </h2>

            <div class="search">

                <input type="text" placeholder="Search books...">

                <i class="bi bi-search"></i>

            </div>

        </div>

        <!-- Cards -->

        <div class="cards">

            <div class="card">
                <h5>Total Books</h5>
                <h1>120</h1>
            </div>

            <div class="card">
                <h5>Students</h5>
                <h1>75</h1>
            </div>

            <div class="card">
                <h5>Issued Books</h5>
                <h1>30</h1>
            </div>

            <div class="card">
                <h5>Available</h5>
                <h1>90</h1>
            </div>

        </div>

        <!-- Quick Actions -->

        <div class="actions">

            <a href="addBook.jsp" class="btn btn-success">
                <i class="bi bi-plus-circle"></i>
                Add Book
            </a>

            <a href="viewBooks.jsp" class="btn btn-primary">
                <i class="bi bi-book"></i>
                View Books
            </a>

            <a href="issueBook.jsp" class="btn btn-warning">
                Issue Book
            </a>

            <a href="returnBook.jsp" class="btn btn-danger">
                Return Book
            </a>

        </div>

        <!-- Latest Books -->

        <div class="table-section">

            <h3>Latest Books</h3>

            <table class="table table-dark table-hover">

                <thead>

                    <tr>
                        <th>ID</th>
                        <th>Book</th>
                        <th>Author</th>
                        <th>Category</th>
                        <th>Status</th>
                    </tr>

                </thead>

                <tbody>

                    <tr>
                        <td>101</td>
                        <td>Java Programming</td>
                        <td>James Gosling</td>
                        <td>Programming</td>
                        <td>
                            <span class="badge bg-success">
                                Available
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td>102</td>
                        <td>Spring Boot</td>
                        <td>Craig Walls</td>
                        <td>Backend</td>
                        <td>
                            <span class="badge bg-danger">
                                Issued
                            </span>
                        </td>
                    </tr>

                </tbody>

            </table>

        </div>

    </div>

</div>

<script src="dashboard.js"></script>

</body>
</html>