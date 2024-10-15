<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String enrollmentId = request.getParameter("enrollmentId");
String password = request.getParameter("password");
String name = request.getParameter("studentName");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String course = request.getParameter("course");
String amount = request.getParameter("amount");
String duration = request.getParameter("duration");
String status = request.getParameter("status");

Connection con = null;
PreparedStatement pst = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
    String sql = "INSERT INTO Student (Enroll, Pass, SName, Ph_No, Email, Course, Amount, Duration, Status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    pst = con.prepareStatement(sql);
    pst.setString(1, enrollmentId);
    pst.setString(2, password);
    pst.setString(3, name);
    pst.setString(4, phone);
    pst.setString(5, email);
    pst.setString(6, course);
    pst.setString(7, amount);
    pst.setString(8, duration);
    pst.setString(9, status);
    

    int rowsAffected = pst.executeUpdate();
    if (rowsAffected > 0) {
    	response.sendRedirect("viewstudent.jsp");
    } else {
        out.println("<p>Failed to add student.</p>");
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
    e.printStackTrace();
} finally {
    if (pst != null) {
        try {
            pst.close();
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
</body>
</html>