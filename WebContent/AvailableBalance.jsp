<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.crowd.Database.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available | Balance</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

body {
    background-color: #ff80d5;
    font-family: 'Noto Sans', sans-serif
}

.card {
    border: none;
    border-radius: 10px;
    width: 275px;
    margin-top: 20%
}

.fa-ellipsis-v {
    font-size: 10px;
    color: #C2C2C4;
    margin-top: 6px;
    cursor: pointer
}

.text-dark {
    font-weight: bold;
    margin-top: 8px;
    font-size: 13px;
    letter-spacing: 0.5px
}

.card-bottom {
    background: #3E454D;
    border-radius: 6px
}

.flex-column {
    color: #adb5bd;
    font-size: 13px
}

.flex-column p {
    letter-spacing: 1px;
    font-size: 18px
}

.btn-secondary {
    height: 40px !important;
    margin-top: 3px
}

.btn-secondary:focus {
    box-shadow: none
}


</style>

</head>
<body>

<%
String email = session.getAttribute("bankusername").toString();
String balance = null;
String accountnumber = null;

Connection con;
con = DatabaseConnection.createConnection();
try{
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * From bankaccount where email='"+email+"'");
	while(rs.next()){
		balance = rs.getString("amount");
		accountnumber = rs.getString("accountnumber");
	}
	
}catch(Exception e){
	e.printStackTrace(); 
}

%>

<div class="container d-flex justify-content-center">
    <div class="card p-3">
        <div class="d-flex flex-row justify-content-between text-align-center"> <p style="color:blue; margin-left:100px">Bpay </p> </div>
        <p class="text-dark">Available Balance In Your Account</p>
        <p class="text-dark">Account Number : <%=accountnumber %></p>
        <div class="card-bottom pt-3 px-3 mb-2">
            <div class="d-flex flex-row justify-content-between text-align-center">
                
                <div class="d-flex flex-column"><span>Balance amount</span>
                    <p>Rs. <span class="text-white"><%=balance %></span></p>
                </div> <button class="btn btn-secondary"><i class="fas fa-arrow-right text-white"></i></button>
            </div>
        </div>
    </div>
</div>


</body>
</html>