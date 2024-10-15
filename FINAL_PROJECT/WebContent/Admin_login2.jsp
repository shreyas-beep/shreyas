<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard - Our College</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
           background: linear-gradient(85deg, rgba(9,121,9,1) 39%, rgba(0,255,158,1) 100%, rgba(1,20,46,1) 100%);
            color: white;
            padding: 1rem;
            text-align: center;
        }
        nav {
            background-color: #333;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .container {
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 140px);
        }
        .admin-nav {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            display: flex;
            justify-content: space-around;
        }
        .admin-nav a {
            color: #333;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #f4f4f4;
        }
        .admin-nav a:hover {
            background-color: #ddd;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem;
            position: relative;
            width: 100%;
            bottom: 0;
        }
        @media (max-width: 600px) {
            nav a {
                float: none;
                width: 100%;
                text-align: left;
                padding: 10px;
            }
            .admin-nav {
                flex-direction: column;
                align-items: center;
            }
            .admin-nav a {
                width: 100%;
                text-align: center;
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Admin Dashboard</h1>
    </header>
    <nav>
        <a href="Home.jsp">Home</a>
        <a href="Course.jsp">Courses</a>
        <a href="Contact.jsp">Contact Us</a>
        <a href="About.jsp">About Us</a>
    </nav>
    <div class="container">
        <div class="admin-nav">
            <a href="addstudent.jsp">Add-Student</a>
            <a href="viewstudent.jsp">View-Student</a>
            <a href="deleteStudent.jsp">Delete-Student</a>
            <a href="updatestudent.jsp">Update-Student</a>
             <a href="search.jsp">Profile-Student</a>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>
</body>
</html>
