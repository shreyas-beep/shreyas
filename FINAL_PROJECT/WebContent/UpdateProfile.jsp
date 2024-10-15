<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Form</title>
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
        form {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        footer {
            background-color: #333;
            padding: 10px 0;
            text-align: center;
            margin-top: 20px;
        }
           @media (max-width: 600px) {
            nav a {
                float: none;
                width: 100%;
                text-align: left;
                padding: 10px;
            }
    </style>
</head>
<body>
   <header>
        <h1>Update Profile</h1>
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
		String enrollmentId1="";
		String password="";
		String name="";
		long phone=0;
		String email="";
		String course="";
		 int amount =0;
		 String duration="";
		 String status="";
		String enrollmentId = request.getParameter("enrollmentId");

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
            String sql = "SELECT * FROM Student where Enroll='"+enrollmentId+"' ";
            st = con.createStatement();
            rs = st.executeQuery(sql);

            
            while (rs.next()) {
                enrollmentId1 = rs.getString(1);
                password = rs.getString(2);
                name = rs.getString(3);
                phone = rs.getLong(4);
                email = rs.getString(5);
                course = rs.getString(6);
                amount = rs.getInt(7);
                duration = rs.getString(8);
                status = rs.getString(9);

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
        
        <table>
        
        <tr>
        <td> Enrollment ID </td>
        <td> <input type="text" name="txt1" value="<%=enrollmentId1%>"> </td>
        </tr>
        <tr>
        <td> Password </td>
        <td> <input type="text" name="txt1" value="<%=password%>"> </td>
        </tr>
        <tr>
        <td> Name </td>
        <td> <input type="text" name="txt1" value="<%=name%>"> </td>
        </tr>
        <tr>
        <td> Phone </td>
        <td> <input type="text" name="txt1" value="<%=phone%>"> </td>
        </tr>
        <tr>
        <td> Email </td>
        <td> <input type="text" name="txt1" value="<%=email%>"> </td>
        </tr>
        <tr>
        <td> Course </td>
        <td> <input type="text" name="txt1" value="<%=course%>"> </td>
        </tr>
        <tr>
        <td> Amount </td>
        <td> <input type="text" name="txt1" value="<%=amount%>"> </td>
        </tr>
        <tr>
        <td> Duration </td>
        <td> <input type="text" name="txt1" value="<%=duration%>"> </td>
        </tr>
        <tr>
        <td> Status </td>
        <td> <input type="text" name="txt1" value="<%=status%>"> </td>
        </tr>
        </table>
    </div>
    <footer>
        <p>&copy; 2024 Our College. All rights reserved.</p>
    </footer>
</body>
</html>