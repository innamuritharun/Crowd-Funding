<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.crowd.Database.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit | Cash</title>
<link rel="stylesheet" href="css1/style.css">
</head>
<body>
<%
String bankusername = session.getAttribute("bankusername").toString();
Connection con;
String username = null;
String email = null;
String number = null;
String accountnumber = null;
String bankname = null;
String balance = null;

System.out.println(bankusername+" "+username+" "+email+" "+" "+number+" "+accountnumber+" "+bankname+""+balance);

con = DatabaseConnection.createConnection();
try{
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from bankaccount where email='"+bankusername+"'");
	while(rs.next()){
		username = rs.getString("username");
		email = rs.getString("email");
		number = rs.getString("number");
		accountnumber = rs.getString("accountnumber");
		bankname = rs.getString("bankname");
		balance = rs.getString("amount");
	}
}catch(Exception e){
	e.printStackTrace();
}
System.out.println(bankusername+" "+username+" "+email+" "+" "+number+" "+accountnumber+" "+bankname+""+balance);



%>






<section class="feature" id="feature">
	

	    <h1 class="heading"> Deposit Amount Here </h1>

	    <div class="box-container">
	    

	        <div class="box">
	        	<form action="DepositServlet" method="post">
	            <h3>Account Holder Name : <input type="text" name="name" value="<%=username%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Account Holder E-Mail : <input type="text" name="email" value="<%=email%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly>  </h3>
	            <h3>Account Holder Contact : <input type="text" name="number" value="<%=number%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly>  </h3>
	            <h3>Account Holder Account Number : <input type="text" name="accountnumber" value="<%=accountnumber%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Bank Name : <input type="text" name="bankname" value="<%=bankname%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Available Balance : <input type="text" name="balance" value="<%=balance%>" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" readonly> </h3>
	            <h3>Enter Amount to Deposit in to your Account : <input type="text" name="depositamt" style=" width: 20%; margin:1.5rem 0; padding:.7rem 1rem; font-size: 1.7rem; color:#666; border:.1rem solid rgba(0,0,0,.2); text-transform: none;" placeholder="Enter Amount"> </h3> 
								
				<input type="submit" class="btn" value="Deposit">
	            </form>
	           <!--   <a href="#" class="btn">Request</a>   -->
	        </div>
			<br>
	
	        

	        
	    </div>

	</section>


</body>
</html>