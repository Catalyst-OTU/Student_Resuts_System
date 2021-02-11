<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "project.ConnectionProvider" %>
<%@ page import = "java.sql.*" %>

<%
String student_name = request.getParameter("student_name");
String student_id = request.getParameter("Student_id");
String course = request.getParameter("course");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String gender = request.getParameter("gender");
String password = request.getParameter("password");


try{
	
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	stmt.executeUpdate("insert into student values('"+student_id+"', '"+student_name+"', '"+course+"', '"+email+"', '"+phone+"', '"+gender+"', '"+password+"')");
	response.sendRedirect("adminHome.jsp");
	
}
catch(Exception e){
	
	out.println(e.getMessage());
}
%>