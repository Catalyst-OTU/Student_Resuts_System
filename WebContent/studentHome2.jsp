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
    <a href="index.html" style="text-decoration: none;">Logout</a>
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
        
        
        <td> 
		<%	
        		int foc1 = rs.getInt(9);
        		if(foc1 >= 0 && foc1 <= 40){
        			out.println("F9");
        		}else if(foc1 >= 40 && foc1 <= 50){
        			out.println("C");
        		}else if(foc1 >= 50 && foc1 <= 60){
        			out.println("B");
        		}else if(foc1 >= 60 && foc1 <= 70){
        			out.println("B+");
        		}else if(foc1 >= 70 && foc1 <= 80){
        			out.println("A");
        		}else if(foc1 >= 80 && foc1 <= 90){
        			out.println("A+");
        		}else if(foc1 >= 90 && foc1 <= 100){
        			out.println("A+");
        		}
    
        	%>
        
         </td>
        
        <td> <% int foc = rs.getInt(9);
        
             if( foc >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
              </td>
         
      </tr>
      
                           <!-- CLOSING TAG FOR FOC TABLE ROW -->
      
      
      <tr>
      <td colspan="2">HTML & CSS</td>
        <td>100%</td>
        <td>50%</td>
        <td><%= rs.getInt(10)  %>% </td>
        <td>
        		<%	
        		int html_css = rs.getInt(10);
        		if(html_css >= 0 && html_css <= 40){
        			out.println("F9");
        		}else if(html_css >= 40 && html_css <= 50){
        			out.println("C");
        		}else if(html_css >= 50 && html_css <= 60){
        			out.println("B");
        		}else if(html_css >= 60 && html_css <= 70){
        			out.println("B+");
        		}else if(html_css >= 70 && html_css <= 80){
        			out.println("A");
        		}else if(html_css >= 80 && html_css <= 90){
        			out.println("A+");
        		}else if(html_css >= 90 && html_css <= 100){
        			out.println("A+");
        		}
    
        	%>
        
        </td>
        <td>
        <% int html_css1 = rs.getInt(10);
        
             if( html_css1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
         </td>
      </tr>
      
      <!-- CLOSING TAG FOR HTML AND CSS TABLE ROW -->
      
      
      
      
      <tr>
      <td colspan="2">JAVASCRIPT </td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(11)  %> %</td>
        <td>         		<%	
        		int javascript = rs.getInt(11);
        		if(javascript >= 0 && javascript <= 40){
        			out.println("F9");
        		}else if(javascript >= 40 && javascript <= 50){
        			out.println("C");
        		}else if(javascript >= 50 && javascript <= 60){
        			out.println("B");
        		}else if(javascript >= 60 && javascript <= 70){
        			out.println("B+");
        		}else if(javascript >= 70 && javascript <= 80){
        			out.println("A");
        		}else if(javascript >= 80 && javascript <= 90){
        			out.println("A+");
        		}else if(javascript >= 90 && javascript <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> 
        <% int javascript1 = rs.getInt(11);
        
             if( javascript1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        </td>
      </tr>
      
      <!-- CLOSING TAG FOR JAVASCRIPT TABLE ROW -->
      
      
      
      <tr>
        <td colspan="2">SOFTWARE ENGINEERING </td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(12)  %>%</td>
        <td> <%	
        		int se = rs.getInt(12);
        		if(se >= 0 && se <= 40){
        			out.println("F9");
        		}else if(se >= 40 && se <= 50){
        			out.println("C");
        		}else if(se >= 50 && se <= 60){
        			out.println("B");
        		}else if(se >= 60 && se <= 70){
        			out.println("B+");
        		}else if(se >= 70 && se <= 80){
        			out.println("A");
        		}else if(se >= 80 && se <= 90){
        			out.println("A+");
        		}else if(se >= 90 && se <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> <% int se1 = rs.getInt(12);
        
             if( se1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        
        </td>
      </tr>
      
      <!-- CLOSING TAG FOR SOFTWARE ENEGNEERING TABLE ROW -->
      
      
      
      
      <tr>
      <td colspan="2">DATABASE</td>
        <td>100%</td>   
        <td>50%</td>
        <td> <%= rs.getInt(13)  %>% </td>
        <td> <%	
        		int database = rs.getInt(13);
        		if(database >= 0 && database <= 40){
        			out.println("F9");
        		}else if(database >= 40 && database <= 50){
        			out.println("C");
        		}else if(database >= 50 && database <= 60){
        			out.println("B");
        		}else if(database >= 60 && database <= 70){
        			out.println("B+");
        		}else if(database >= 70 && database <= 80){
        			out.println("A");
        		}else if(database >= 80 && database <= 90){
        			out.println("A+");
        		}else if(database >= 90 && database <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> 
        <% int database1 = rs.getInt(13);
        
             if( database1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        
         </td>
      </tr>
      
      <!-- CLOSING TAG FOR DATABASE TABLE ROW -->
      
      
      
      <tr>
        <td colspan="2">PYTHON</td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(14)  %>% </td>
        <td>  <%	
        		int python = rs.getInt(14);
        		if(python >= 0 && python <= 40){
        			out.println("F9");
        		}else if(python >= 40 && python <= 50){
        			out.println("C");
        		}else if(python >= 50 && python <= 60){
        			out.println("B");
        		}else if(python >= 60 && python <= 70){
        			out.println("B+");
        		}else if(python >= 70 && python <= 80){
        			out.println("A");
        		}else if(python >= 80 && python <= 90){
        			out.println("A+");
        		}else if(python >= 90 && python <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> 
        <% int python1 = rs.getInt(14);
        
             if( python1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
         </td>
      </tr>
      
      <!-- CLOSING TAG FOR PYTHON TABLE ROW -->
      
      
      
      
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
    
              
        