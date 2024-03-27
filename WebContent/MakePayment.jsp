<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.crowd.Database.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Make | Payment</title>
<link rel="stylesheet" href="css1/style.css">
</head>
<body>
	<%
	String bankusername = session.getAttribute("bankusername").toString();
	Connection con;
	String filename1 = null;
	String email = null;
	String productname = null;
	
	String category = null;
	String description = null;
	
	String consumer = session.getAttribute("consumer").toString();
	session.setAttribute("consumer", consumer);
	System.out.println("The consumer Name is: "+consumer);
	
	 con = DatabaseConnection.createConnection();
	 	
	 try{
	 	Statement st = con.createStatement();
	 	ResultSet rs = st.executeQuery("select * from event");
	 		while(rs.next()){
	 			filename1 = rs.getString("filename");
	 			productname = rs.getString("productname");
	 			
	 			category = rs.getString("category");
	 			description = rs.getString("description");
	 			
	 		}
	 	}catch(Exception e){
	 		e.printStackTrace();
	 	}
	 	System.out.println(bankusername+" "+filename1+" "+productname+" "+category+" "+description);



	 	%>
	        
<section class="feature" id="feature">
	

	    <h1 class="heading"> Pay Amount Here </h1>

	    <div class="box-container">
	    

	        <div class="box">
	        	<form action="PaymentProcessServlet" method="post">
	        	<h3>PuserName : <input type="text" name="pusername" value="<%=consumer%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	        	 <h3>File Name : <input type="text" name="filename" value="<%=filename1%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Product Name : <input type="text" name="productname" value="<%=productname%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Category : <input type="text" name="category" value="<%=category%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly>  </h3>
	            <h3>Description : <input type="text" name="description" value="<%=description%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Enter Amount to Pay : <input type="text" name="productprice" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" placeholder="Enter Amount"> </h3> 
								
				<input type="submit" class="btn" value="Donate">
	            </form>
	           <!--   <a href="#" class="btn">Request</a>   -->
	        </div>
			<br>
	
	        

	        
	    </div>

	</section>




	        
	  

</body>
</html>