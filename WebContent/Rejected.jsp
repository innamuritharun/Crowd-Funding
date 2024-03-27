<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.crowd.Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>

<%@page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Accept | Success</title>
</head>
<body>
<%
String dprovider=session.getAttribute("dprovider").toString();
session.setAttribute("dprovider", dprovider);
String filename=request.getParameter("fname");


String requestby=request.getParameter("reqby");


System.out.println("File Accept-"+filename+requestby);

String filekey="";


try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=(Connection)DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/fairpayment","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from uploadfile where filename='"+filename+"' and username='"+dprovider+"'");

   while(rs.next())
    {
        
  			filekey=rs.getString("filekey");
  }
    }
catch(Exception e){
  //  out.print(e.getMessage());
}

System.out.println(dprovider);

int ans=0;
try
{
	Connection con=(Connection)DriverManager.getConnection(
	        "jdbc:mysql://localhost:3306/fairpayment","root","root");
	PreparedStatement ps=con.prepareStatement("update filerequest set filekey='******',acceptby='cfunder',status='Denied' where requestby='"+requestby+"' and filename='"+filename+"'");
	ans=ps.executeUpdate();
	if(ans==1)
	{
		response.sendRedirect("FileRejectSucces.jsp");
		
	}

	else
	{
		response.sendRedirect("AdminHome.jsp");
	}

}
catch(Exception e)
{
	e.printStackTrace();
}






%>
</body>
</html>