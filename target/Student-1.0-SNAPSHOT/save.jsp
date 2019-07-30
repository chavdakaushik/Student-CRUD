<%@page import="com.student.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("name");
String last_name=request.getParameter("password");
String city_name=request.getParameter("email");
String email=request.getParameter("mobile");
String address=request.getParameter("address");
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname", "root", "root");
//Statement st=conn.createStatement();

Student s = new Student();

PreparedStatement ps=conn.prepareStatement("delete from student1 where id='"+s.getId()+"'");  
int i = ps.executeUpdate();  
//int i=st.executeUpdate("update student1 set(name, password, email,mobile, address) values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"','"+address+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>