<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.crowd.Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %> 
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact | Details</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

</head>
<body>


<div class="container">
	<div class="row">
       <div class="col-md-12">
        <h4>Contacted Details </h4> <br> 
        <div class="table-responsive">
              <table id="mytable" class="table table-bordred table-striped">
                   <thead>
                   <tr>
                    <th>S.no</th>
                    <th>Name</th>
             		<th>Email</th>
             		<th>Message</th>
             		
                     </tr>
                   </thead>
 
 <%
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/fairpayment","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from contact");
%>
	
    <tbody>
     <%
     int ii=1;
              
        while(rs.next())
        {
            %>
    <tr>
    <td><%=ii%></td>
   
   
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("email") %></td>
    <td><%=rs.getString("message") %></td>
    
    </tr>
    <%
            ii++;
        }
        %>
   
    </tbody>
        
</table>

 <%con.close();
    
        %><br><%
}
    catch(Exception e){
    	  e.printStackTrace();
    	}
    		
    %>
    </div>
    </div>
	</div>
</div>


</body>
</html>