<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student - Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
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
            max-width: 800px;
            margin: auto;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 15px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            margin-top: 10px;
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
    </style>
    
</head>
<body>
    <header>
        <h1>Update Student</h1>
    </header>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="Course.jsp">Courses</a>
        <a href="About.jsp">About Us</a>
        <a href="Contact.jsp">Contact Us</a>
    </nav>
    <div class="container">
        <div class="form-container">
            <h2>Update Student Details</h2>
            <form id="updateForm" action="updateStudent2.jsp" method="post" onsubmit="return validateForm()">
                <label for="enrollmentId">Enrollment ID:</label>
                <input type="text" id="enrollmentId" name="enrollmentId" required onblur="fetchStudentDetails()">

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <label for="name">Student Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="course">Course:</label>
                <select id="course" name="course" required>
                    <option value="">Select a Course</option>
                    <option value="CSE">B.Tech (CSE)</option>
                    <option value="ECE">B.Tech (ECE)</option>
                    <option value="BioTech">B.Tech (BioTech)</option>
                    <option value="Mechanical">B.Tech (Mechanical)</option>
                    <option value="MBA">MBA</option>
                    <option value="MCA">MCA</option>
                    <option value="BCA">BCA</option>
                    <option value="LLB">LLB</option>
                    <option value="BA">BA</option>
                </select>

                <label for="amount">Amount:</label>
                <input type="number" id="amount" name="amount" required>

                <label for="duration">Duration:</label>
                <input type="text" id="duration" name="duration" required>

                <label for="status">Status:</label>
                <select id="status" name="status" required>
                    <option value="">Select Status</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                </select>

                <input type="submit" value="Update Student">
            </form>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>
</body>
</html>