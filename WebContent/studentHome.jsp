<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "project.ConnectionProvider" %>
<%@ page import = "java.sql.*" %>

<%

try{
	
	String student_id = request.getParameter("student_id");
	//String password = request.getParameter("password");
	
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from student inner join results where student.student_id = results.student_id and student.student_id = '"+student_id+"' ");

	//String sql = "select * from student inner join results where student.student_id = results.student_id and student.student_id = ? and student.password = ? ";
	
	//PreparedStatement myStmt = conn.prepareStatement("select * from student inner join results where student.student_id = results.student_id and student.student_id = ? and student.password = ? ");
	
	//Class.forName("com.mysql.cj.jdbc.Driver");
	
	//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_results", "root", "catalyst1006");
	//PreparedStatement ps = conn.prepareStatement("select * from student inner join results where student.student_id = results.student_id and student.student_id = ? and student.password = ? ");
	
	
	if(rs.next()){


%>


<!-- 
<img src="logo.png"  align="left"width="150" height="150">
<center><img src="dgi.png" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
 -->
 
 
<center> <a href="#" class="logo"><img src="images/aiti.png" width="500" height="110"></a> </center>
    <a href="index.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: AITI-KACE</th>
          <th>Student ID: <%= rs.getString(1)  %></th>
          <th>Student Name: <%= rs.getString(2)  %></th>
          <th><center>Course: <%= rs.getString(3)  %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Email: <%= rs.getString(4)  %></th>
          <th>Phone: <%= rs.getString(5)  %></th>
          <th>Gender: <%= rs.getString(6)  %></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<title>Student Home</title>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3" style="color: white;">CERTIFICATE IN SOFTWARE DEVELOPMENT</td>
        <td rowspan="2">Pass Marks</td>
        <td rowspan="2">Your Score</td>
        <td rowspan="2">Grades</td>
        <td rowspan="2">Status</td>
        
      </tr>
      <tr>
      <td colspan="2"> Modules </td>
        <td>Full Marks </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td colspan="2">FOC </td>
        <td>100%</td>
        <td>50%</td>
        <td><%= rs.getInt(9)  %>%</td>
        <td> 30 </td>
        
        <td> <% int status = rs.getInt(9);
        
             if( status >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
              </td>
               
      </tr>
      <tr>
      <td colspan="2">HTML & CSS</td>
        <td>100%</td>
        <td>50%</td>
        <td><%= rs.getInt(10)  %>% </td>
        <td>30</td>
        <td>
        <% int status1 = rs.getInt(10);
        
             if( status1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
         </td>
      </tr>
      <tr>
      <td colspan="2">JAVASCRIPT </td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(11)  %> %</td>
        <td> 30 </td>
        <td> 
        <% int status2 = rs.getInt(11);
        
             if( status2 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        </td>
      </tr>
      <tr>
        <td colspan="2">SOFTWARE ENGINEERING </td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(12)  %>%</td>
        <td> 30 </td>
        <td> <% int status3 = rs.getInt(12);
        
             if( status3 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        
        </td>
      </tr>
      <tr>
      <td colspan="2">DATABASE</td>
        <td>100%</td>   
        <td>50%</td>
        <td> <%= rs.getInt(13)  %>% </td>
        <td> 30 </td>
        <td> 
        <% int status4 = rs.getInt(13);
        
             if( status4 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        
         </td>
      </tr>
      <tr>
        <td colspan="2">PYTHON</td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(14)  %>% </td>
        <td>15</td>
        <td> 
        <% int status5 = rs.getInt(14);
        
             if( status5 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
         </td>
      </tr>
    <!--   <tr>
        <td>NAS151</td>
        <td colspan="2">Engg. Physics Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td> 21 </td>
      </tr>
    -->
    </tbody>
  <!--   <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td> <% int sum = rs.getInt(9) + rs.getInt(10) + rs.getInt(11) + rs.getInt(12) + rs.getInt(13) + rs.getInt(14); out.println(sum); %> </td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100/560)); %></td>
      </tr>
  -->
  </table>
    <hr class="new1">
<center><h6>All Right Reserved @ AITI-KACE</h6></center> 
  <hr class="new1">
</body>

<%


	}

	else
	{
			response.sendRedirect("errorDgiOneView.html");
	     }   
	  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 


%>
    
              
        