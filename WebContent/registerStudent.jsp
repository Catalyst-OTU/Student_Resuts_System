<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Student</title>
<link rel="stylesheet" href="assets/css/bootstrap.css" />


 <script src="assets/js/datatables-demo.js"></script>
<script src="assets/js/dataTables.bootstrap4.min.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/dataTables.bootstrap4.js"></script>
<script src="assets/js/jquery.dataTables.js"></script>
</head>
<body>


 <div class="container-fluid">





<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <!-- <h1 class="h3 mb-0 text-gray-800"><big>ATEBUBU / AMANTIN NPP MEMBERS DASHBOARD</big></h1> -->
    <h5 class="text-center text-primary heading_5"><big>REGISTER STUDENT</big></h5>

    <form action="" method="POST">
       <button type="submit" name="btn_pdf" class="btn btn-primary"><i class="fas fa-download fa-sm text-white-50"></i>Generate Report</button>
    </form>
    <!-- <a href="https://newpatrioticparty.org/" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="text-white-50"></i> OFFICIAL PAGE OF NPP PARTY</a> -->
</div>



  
<br/><br/><br/>
    <table class="table table-bordered table-stripped table-hover" id="dataTable">
      <thead class="bg-warning">
        <tr>
         <th>Student ID</th>
         <th>Student Name</th>
          <th>Course</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Gender</th>
          <th>password</th>
        </tr>
      </thead>


      <tbody>
      <%@ page import = "project.ConnectionProvider" %>
      <%@ page import = "java.sql.*" %>
      
<%
      
try{
	Connection conn = ConnectionProvider.getCon();
	//Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from student");
	while(rs.next())
	{
%>
		 
        <tr>
          <td><%= rs.getString(1) %></td>
          <td><%= rs.getString(2) %></td>
          <td><%= rs.getString(3) %></td>
          <td><%= rs.getString(4) %></td>
          <td><%= rs.getString(5) %></td>
          <td><%= rs.getString(6) %></td>
          <td><%= rs.getString(7) %></td>
        </tr>
      </tbody>
<%}}
catch(Exception e){
	out.println(e.getMessage());
}
%>


    </table>





</div>


</body>
</html>