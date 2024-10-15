<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<%@ page import="java.sql.*" %>
<%
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                
                

                Connection con = null;
                PreparedStatement pst = null;
                ResultSet rs = null;

                try {
                   
                    Class.forName("com.mysql.jdbc.Driver");

                   
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
                    

                    
                    String sql = "SELECT * FROM Admin WHERE USERNAME=? AND PASSWORD=?";
                    pst = con.prepareStatement(sql);
                    pst.setString(1, username);
                    pst.setString(2, password);
                    

                   
                    rs = pst.executeQuery();

                    
                    if (rs.next()) {
                        
                        session.setAttribute("adminUsername", username);
                        response.sendRedirect("Admin_login2.jsp");  
                    } else {
                        out.println("<p>Invalid Username or Password. Please try again.</p>");
                        out.println("<a href='adminLogin.jsp'>Back to Login</a>");
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

</body>
</html>