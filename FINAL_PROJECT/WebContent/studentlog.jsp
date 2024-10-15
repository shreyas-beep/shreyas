<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PROFILE</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
                String enrollmentId = request.getParameter("enrollmentId");
                String password = request.getParameter("password");

                Connection con = null;
                PreparedStatement pst = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
                    String sql = "SELECT * FROM Student WHERE Enroll=? AND Pass=?";
                    pst = con.prepareStatement(sql);
                    pst.setString(1, enrollmentId);
                    pst.setString(2, password);
                    rs = pst.executeQuery();

                    if (rs.next()) {
                        session.setAttribute("enrollmentId", enrollmentId);
                        response.sendRedirect("student2.jsp");
                    } else {
                        out.println("<p>Invalid Enrollment ID or Password. Please try again.</p>");
                        out.println("<a href='studentLogin.jsp'>Back to Login</a>");
                    }
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (pst != null) try { pst.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
</body>
</html>