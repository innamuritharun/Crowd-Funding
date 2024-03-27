<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.crowd.Database.DatabaseConnection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Request | Success</title>
</head>
<body>
<%
String filename = request.getParameter("fname");
String filesize = request.getParameter("fsize");
String dprovider = session.getAttribute("dprovider").toString();


System.out.println("Data request"+filename+"-"+filesize+"-"+dprovider);

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/fairpayment","root","root");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from uploadfile where filename = '"+filename+"' and size = '"+filesize+"'");
	while(rs.next()) {
		dprovider = rs.getString("username");
	}
}catch(Exception e) {
	
}
System.out.println(dprovider);

int ans=0;
try {
	Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/fairpayment","root","root");
	PreparedStatement ps = con.prepareStatement("INSERT INTO filerequest(fileowner,filename,filesize,requestby,status) VALUES(?,?,?,?,?)");
	ps.setString(1, dprovider);
	ps.setString(2, filename);
	ps.setString(3, filesize);
	ps.setString(4, dprovider);
	ps.setString(5, "Waiting");
	ans = ps.executeUpdate();
} catch(Exception e) {
	e.printStackTrace();
}
if(ans==1) {
	response.sendRedirect("FileReqSuccess.jsp");
} else {
	response.sendRedirect("OutsourcingHome.jsp");
}
%>
</body>
</html>