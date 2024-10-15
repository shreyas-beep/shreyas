<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Update</title>
</head>
<body>
    <%@ page import="java.sql.*" %>
<%
        String id = request.getParameter("id");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String caste = request.getParameter("caste");
        String physicalDisability = request.getParameter("physical_disability");
        String presentAddress = request.getParameter("present_address");
        String permanentAddress = request.getParameter("permanent_address");
        String class10School = request.getParameter("class10_school");
        String class10Marks = request.getParameter("class10_marks");
        String class12School = request.getParameter("class12_school");
        String class12Marks = request.getParameter("class12_marks");
        String fatherName = request.getParameter("father_name");
        String fatherOccupation = request.getParameter("father_occupation");
        String motherName = request.getParameter("mother_name");
        String motherOccupation = request.getParameter("mother_occupation");
        String studentPhone = request.getParameter("student_phone");
        String guardianPhone = request.getParameter("guardian_phone");
        String studentEmail = request.getParameter("student_email");
        String guardianEmail = request.getParameter("guardian_email");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");

            String sql = "UPDATE profile SET DOB=?, Gender=?, Caste=?, Physical_Disability=?, Present_Address=?, Permanent_Address=?, " +
                         "Class10_School=?, Class10_Marks=?, Class12_School=?, Class12_Marks=?, Father_Name=?, Father_Occupation=?, " +
                         "Mother_Name=?, Mother_Occupation=?, Student_Phone=?, Guardian_Phone=?, Student_Email=?, Guardian_Email=? " +
                         "WHERE Enrollment_ID=?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dob);
            pstmt.setString(2, gender);
            pstmt.setString(3, caste);
            pstmt.setString(4, physicalDisability);
            pstmt.setString(5, presentAddress);
            pstmt.setString(6, permanentAddress);
            pstmt.setString(7, class10School);
            pstmt.setDouble(8, Double.parseDouble(class10Marks));
            pstmt.setString(9, class12School);
            pstmt.setDouble(10, Double.parseDouble(class12Marks));
            pstmt.setString(11, fatherName);
            pstmt.setString(12, fatherOccupation);
            pstmt.setString(13, motherName);
            pstmt.setString(14, motherOccupation);
            pstmt.setString(15, studentPhone);
            pstmt.setString(16, guardianPhone);
            pstmt.setString(17, studentEmail);
            pstmt.setString(18, guardianEmail);
            pstmt.setString(19, id);

            int rows = pstmt.executeUpdate();

            if (rows > 0) {
                out.println("<p>Profile updated successfully!</p>");
            } else {
                out.println("<p>Failed to update profile.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
    <a href="UpdateProfile.jsp">Go back to the form</a>
</body>
</html>