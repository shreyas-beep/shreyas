<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Update Student Process - Admin Dashboard</title>
 <body>
   <%@ page import="java.sql.*" %>
<%
                String enrollmentId = request.getParameter("enrollmentId");
                String password = request.getParameter("password");
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String course = request.getParameter("course");
                int amount = Integer.parseInt(request.getParameter("amount"));
                String duration = request.getParameter("duration");
                String status = request.getParameter("status");

                Connection con = null;
                PreparedStatement pst = null;

                try {
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");

                   
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");

                    
                    String sql = "UPDATE Student SET Password=?, Name=?, Phone=?, Email=?, Course=?, Amount=?, Duration=?, Status=? WHERE Enrollment_ID=?";
                    pst = con.prepareStatement(sql);
                    pst.setString(1, password);
                    pst.setString(2, name);
                    pst.setString(3, phone);
                    pst.setString(4, email);
                    pst.setString(5, course);
                    pst.setInt(6, amount);
                    pst.setString(7, duration);
                    pst.setString(8, status);
                    pst.setString(9, enrollmentId);

                    
                    int rowsUpdated = pst.executeUpdate();

                    if (rowsUpdated > 0) {
                        out.println("<p>Student details updated successfully.</p>");
                        out.println("<a href='viewstudent.jsp'>View Updated Student List</a>");
                    } else {
                        out.println("<p>Failed to update student details. Please check the Enrollment ID.</p>");
                        out.println("<a href='updatestudent.jsp'>Back to Update Form</a>");
                    }
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                    e.printStackTrace();
                } finally {
                    // Close resources
                    if (pst != null) try { pst.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
</body>
</html>