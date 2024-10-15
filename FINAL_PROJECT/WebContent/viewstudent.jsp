<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>View Students - Our College</title>
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
            width: 100%;
        }
        table {
            width: 100%;
            max-width: 1000px;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table th, table td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
            word-wrap: break-word;
        }
        table th {
            background-color: #333;
            color: white;
            font-size: 1.1em;
        }
        table td {
            font-size: 1em;
            color: #333;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        table tr:hover {
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
            table th, table td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>View Students</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="courses.jsp">Courses</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="about.jsp">About Us</a>
        <a href="login.jsp">Login</a>
    </nav>
    <div class="container">
        <h2>Enrolled Students</h2>
        <%@ page import="java.sql.*" %>
		<%
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
            String sql = "SELECT * FROM Student";
            st = con.createStatement();
            rs = st.executeQuery(sql);

            out.println("<table>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Enrollment ID</th>");
            out.println("<th>Password</th>");
            out.println("<th>Name</th>");
            out.println("<th>Phone</th>");
            out.println("<th style='width: 200px;'>Email</th>");
            out.println("<th>Course</th>");
            out.println("<th>Amount</th>");
            out.println("<th>Duration</th>");
            out.println("<th>Status</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            while (rs.next()) {
                String enrollmentId = rs.getString(1);
                String password = rs.getString(2);
                String name = rs.getString(3);
                long phone = rs.getLong(4);
                String email = rs.getString(5);
                String course = rs.getString(6);
                int amount = rs.getInt(7);
                String duration = rs.getString(8);
                String status = rs.getString(9);

                out.println("<tr>");
                out.println("<td>" + enrollmentId + "</td>");
                out.println("<td>" + password + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + phone + "</td>");
                out.println("<td style='word-wrap: break-word;'>" + email + "</td>");
                out.println("<td>" + course + "</td>");
                out.println("<td>" + amount + "</td>");
                out.println("<td>" + duration + "</td>");
                out.println("<td>" + status + "</td>");
                out.println("</tr>");
            }

            out.println("</tbody>");
            out.println("</table>");
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        %>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>
</body>
</html>