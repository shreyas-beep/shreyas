<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Student Dashboard - Our College</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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
            flex: 1;
            padding: 20px;
          
        	margin-top:10%;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        .links {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .link-button {
            background-color: #333;
            color: white;
            padding: 15px 25px;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 200px;
        }
        .link-button:hover {
            background-color: #45a049;
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
            .link-button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Student Dashboard</h1>
    </header>
    <nav>
       <a href="Home_Page.jsp">Home</a>
        <a href="Course.jsp">Courses</a>
        <a href="Contact.jsp">Contact Us</a>
        <a href="About.jsp">About Us</a>
    </nav>
    <div class="container">
        <div class="links">
            <a href="search.jsp" class="link-button">Student Info</a>
            <a href="semesterDetails.jsp" class="link-button">Semester Details</a>
            <a href="payment.jsp" class="link-button">Payment</a>
            <a href="UpdateProfile.jsp" class="link-button">Update Profile</a>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>
</body>
</html>