<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Enrollment Form - Our College</title>
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
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 140px);
        }
        .student-form {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        .student-form h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .student-form input[type="text"],
        .student-form input[type="password"],
        .student-form input[type="email"],
        .student-form input[type="tel"],
        .student-form input[type="number"],
        .student-form select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .student-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .student-form input[type="submit"]:hover {
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
        }
    </style>
</head>
<body>
<%
String s = session.getAttribute("enrollmentId").toString();
%>
<%@ page import="java.sql.*" %>
<%
String aa3="",aa1="";
int aa7=0;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","");
String sql="select * from Student where Enroll='"+s+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
aa1=rs.getString(1);
aa3=rs.getString(3);
aa7 = rs.getInt(7);
}
out.println("</table>");
}
catch(Exception ae)
{
out.println(ae);
}
%>

    <header>
        <h1>Student Enrollment Form</h1>
    </header>
    <nav>
        <a href="Home.jsp">Home</a>
        <a href="Course.jsp">Courses</a>
        <a href="Contact.jsp">Contact Us</a>
        <a href="About.jsp">About Us</a>
    </nav>
    <div class="container">
        <form class="student-form" action="paymentdone.jsp" method="post">
            <h2>Enroll a New Student</h2>
            <input type="text" name="enrollmentId" placeholder="Enrollment ID" required>
            
           
           <select name="semester" required>
                <option value="">Select Semester</option>
                <option value="1st Year">1st Year</option>
                <option value="2nd Year">2nd Year</option>
                <option value="3rd Year">3rd Year</option>
                <option value="4th year">4th Year</option>
                
            </select>
            <!-- <input type="number" name="amount" placeholder="Amount" required>  -->
            <input type="number" name="pay" placeholder="Pay" required>
            
      
            <input type="submit" value="Pay Now">
        </form>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>
</body>
</html>
