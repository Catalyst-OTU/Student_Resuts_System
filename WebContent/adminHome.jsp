<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>Admin Home</title>
<body>
<!--   <img src="logo.png"  align="left"width="100" height="100">
   <center><img src="dgi.png" width="100" height="100">
<img src="apj sir.png" align="right"  width="100" height="100"></center>   -->


<center><img src="images/aiti.png" width="500" height="100"></center>

<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
     <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="student_name" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="Student_id" required>
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Course</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="course" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Email</label>
                                    <div class="col-md-6">
                                        <input type="email" class="form-control" name="email" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Phone Number</label>
                                    <div class="col-md-6">
                                        <input type="number"  class="form-control" name="phone" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                       <!-- -<input type="text"  class="form-control" name="gender" required>  -->
                                       <select class="form-control" name="gender">
                                       		<option>Select</option>
                                       		<option value="Male">Male</option>
                                       		<option value="Female">Female</option>
                                       </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" name="password" required>
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="insertNewResults.jsp" method="">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="Student_id">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">FOC</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="foc">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">HTML & CSS</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="html_css">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">JavaScript</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="javascript">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Software Engineering</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="se">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Database</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="database_tec">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Python</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="python">
                                    </div>
                                </div>
                                <!-- ---
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Physics Lab</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="">
                                    </div>
                                </div>
                                
                                 -->
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


 <script src="assets/js/datatables-demo.js"></script>
<script src="assets/js/dataTables.bootstrap4.min.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/dataTables.bootstrap4.js"></script>
<script src="assets/js/jquery.dataTables.js"></script>
</body>
</html> 
  </div>



<link rel="stylesheet" href="assets/css/bootstrap.css" />


  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
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
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@ page import = "project.ConnectionProvider" %>
      <%@ page import = "java.sql.*" %>
      
<%
      
try{
	
	Connection conn = ConnectionProvider.getCon();
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
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>STUDENT NAME</th>
          <th>STUDENT ID</th>
          <th>COURSE</th>
          <th>FOC</th>
          <th>HTML & CSS</th>
          <th>JAVASCRIPT</th>
          <th>SOFTWARE ENGINEERING</th>
          <th>DATABASE</th>
          <th>PYTHON</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@ page import = "project.ConnectionProvider" %>
      <%@ page import = "java.sql.*" %>
      
      
      <%
      
try{
	
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select student.student_name, student.student_id, student.course, results.foc, results.html_css, results.javascript, results.se, results.database_tec, results.python FROM student, results WHERE student.student_id = results.student_id ORDER BY student.student_id");
	while(rs.next())
	{
%>     
        <tr>
          <td><%= rs.getString(1) %></td>
          <td><%= rs.getString(2) %></td>
          <td><%= rs.getString(3) %></td>
          <td><%= rs.getInt(4) %></td>
          <td><%= rs.getInt(5) %></td>
          <td><%= rs.getInt(6) %></td>
          <td><%= rs.getInt(7) %></td>
          <td><%= rs.getInt(8) %></td>
          <td><%= rs.getInt(9) %></td>
        </tr>
      </tbody>
      
<%}}
catch(Exception e){
	out.println(e.getMessage());
}
%>
      
      
    </table>
  </div>
</section>

</div>
  <hr class="new1">
<br>
<center><h5>All Right Reserved @ AITI-KACE</h5></center> 

</body>
</html>