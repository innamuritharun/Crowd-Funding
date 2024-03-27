<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.crowd.Database.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment | Details</title>
<link rel="stylesheet" href="css1/style.css">
</head>
<body>

<section class="feature" id="feature">
	<%
	 String username = session.getAttribute("consumer").toString();
	Connection con;
	 con = DatabaseConnection.createConnection();
	 try{
	 	Statement st = con.createStatement();
	 	ResultSet rs = st.executeQuery("select * from paymentprocess where pusername='"+username+"'");
	%>

	    <h1 class="heading"> Payment Details </h1>

	    <div class="box-container">
	    <%
	     int ii=1;
	              
	        while(rs.next())
	        {
	            %>

	        <div class="box">
	            <img src="pimages/<%=rs.getString("filename") %>" alt="">
	            <h3>Donated Event Details</h3>
	            <h3>s.no : <%=ii %></h3>
	            <h3>Event Name : <%=rs.getString("productname") %></h3>
	           
	            <h3>Category : <%=rs.getString("category") %></h3>
	            <h3>Description : <%=rs.getString("description") %></h3>
	            <h3>Bank Name : <%=rs.getString("bankname") %></h3>
	            <h3>Account Number : <%=rs.getString("accountnumber") %></h3>
	            <h3>Paid Amount : <%=rs.getString("productprice") %></h3>
	            <h3>Investor E-Mail : <%=rs.getString("email") %></h3>
	            <h3>Investor Number : <%=rs.getString("number") %></h3>
	            
	           <!--   <a href="#" class="btn">Request</a>   -->
	        </div>
			<%
	            ii++;
	        }
	        %>
	        <%con.close();
	    
	        %><br><%
	}
	    catch(Exception e){
	    	  e.printStackTrace();
	    	}
	    		
	    %>
	        

	        
	    </div>

</section>


</body>
</html>