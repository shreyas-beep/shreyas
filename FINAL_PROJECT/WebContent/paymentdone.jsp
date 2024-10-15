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
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","");
String enroll=request.getParameter("enrollmentId");
String sem=request.getParameter("sem");
//int amt = Integer.parseInt(request.getParameter("amt"));
int pay = Integer.parseInt(request.getParameter("pay"));



String sql1="select * from student where Enroll='"+enroll+"'";
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery(sql1);

int amount=0;

while(rs1.next())
{
	amount=rs1.getInt(7);
}


int due=amount-pay;

String sql2="insert into payment (Sem,Amount,Due,Enroll,STATUS) values('"+sem+"',"+amount+","+due+",'"+enroll+"','Pending')";
out.println(sql2);
Statement st2=con.createStatement();
st2.executeUpdate(sql2);


String sql3="update Student set Amount = "+due+" where Enroll='"+enroll+"'";
Statement st3=con.createStatement();
st3.executeUpdate(sql3);
response.sendRedirect("student2.jsp");
}
catch(Exception ae)
{
System.out.println(ae);
}
%>
</body>
</html>