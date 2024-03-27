<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.crowd.Database.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order | Books</title>
<link rel="stylesheet" href="css1/style.css">
</head>
<body>
<section class="feature" id="feature">
	<%
	String consumer = session.getAttribute("consumer").toString();
	session.setAttribute("consumer", consumer);
	System.out.println("The consumer Name is: "+consumer);
	Connection con;
	 con = DatabaseConnection.createConnection();
	 try{
	 	Statement st = con.createStatement();
	 	ResultSet rs = st.executeQuery("select * from fairpayment.event");
	%>

	    <h1 class="heading">Events Available to Register!!!</h1>

	    <div class="box-container">
	    <%
	     int ii=1;
	              
	        while(rs.next())
	        {
	            %>

	        <div class="box">
	            <img src="pimages/<%=rs.getString("filename") %>" alt="">
	            <h3>Event Details</h3>
	            <h3>s.no : <%=ii %></h3>
	            <h3>Event Name : <%=rs.getString("productname") %></h3>
	            <h3>Event Donate Price : <%=rs.getString("productprice") %></h3>
	            <h3>Category : <%=rs.getString("category") %></h3>
	            <h3>Description : <%=rs.getString("description") %></h3>
	            
	              <a href="EventRegisterServlet?pusername=<%=consumer%>&filename=<%=rs.getString("filename")%>&productname=<%=rs.getString("productname")%>&productprice=<%=rs.getString("productprice")%>&category=<%=rs.getString("category")%>&description=<%=rs.getString("description")%>" class="btn">Register now</a>   
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