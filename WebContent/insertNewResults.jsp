<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "project.ConnectionProvider" %>
<%@ page import = "java.sql.*" %>


<%
String student_id = request.getParameter("Student_id");
String foc = request.getParameter("foc");
String html_css = request.getParameter("html_css");
String javascript = request.getParameter("javascript");
String se = request.getParameter("se");
String database_tec = request.getParameter("database_tec");
String python = request.getParameter("python");


try{
	
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	stmt.executeUpdate("insert into results values('"+student_id+"', '"+foc+"', '"+html_css+"', '"+javascript+"', '"+se+"', '"+database_tec+"', '"+python+"')");
	response.sendRedirect("adminHome.jsp");
	
}
catch(Exception e){
	
	out.println(e.getMessage());
}
%>