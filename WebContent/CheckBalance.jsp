<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.crowd.Database.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check | Balance</title>
<link rel="stylesheet" href="css1/style.css">
</head>
<body>
<%
Connection con;
String bankusername = session.getAttribute("bankusername").toString();
String username = null;
String email = null;
String bankname = null;
String accountnumber = null;
String balance = null;
String number = null;
System.out.println(username+" "+email+" "+bankname+" "+accountnumber+" "+balance+" "+number);
try{
	con = DatabaseConnection.createConnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from bankaccount where email='"+bankusername+"'");
	while(rs.next()){
		username = rs.getString("username");
		email = rs.getString("email");
		bankname = rs.getString("bankname");
		accountnumber = rs.getString("accountnumber");
		balance = rs.getString("amount");
		number = rs.getString("number");
	}
}catch(Exception e){
	e.printStackTrace();
}
System.out.println(username+" "+email+" "+bankname+" "+accountnumber+" "+balance+" "+number);
%>





<section class="feature" id="feature">
	

	    <h1 class="heading"> Available Bank Balance </h1>

	    <div class="box-container">
	    

	        <div class="box">
	            
	            <h3>Current Balance</h3>
	            <h3>Account Holder Name : <%=username%></h3>
	            <h3>Account Holder E-Mail : <%=email%></h3>
	            <h3>Account Holder Bank : <%=bankname%></h3>
	            <h3>Bank Account Number : <%=accountnumber%></h3>
	            <h3>Contact Number : <%=number%></h3>
	            <h3>Available Balance : <%=balance %></h3>
	           <!--   <a href="#" class="btn">Request</a>   -->
	        </div>
			       
	        	        
	    </div>

</section>




</body>
</html>