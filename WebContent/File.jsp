<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consumer | File Upload</title>

<link rel="stylesheet" href="css/File.css">
</head>
<body>
<%
String dprovider=session.getAttribute("dprovider").toString();
session.setAttribute("dprovider", dprovider);

Random r= new Random(); 

String key="ABCDEF123456789";
char c=key.charAt(r.nextInt(key.length()));
char c1=key.charAt(r.nextInt(key.length()));
char c2=key.charAt(r.nextInt(key.length()));
char c3=key.charAt(r.nextInt(key.length()));
char c4=key.charAt(r.nextInt(key.length()));
char c5=key.charAt(r.nextInt(key.length()));

String Secretkey=""+c+""+c1+""+c2+""+c3+""+c4+""+c5;
System.out.print(Secretkey);


%>
<div class="frame">
	<form action="FileuploadServlet" method="post" enctype="multipart/form-data">
	<div class="center">
		<div class="title">
			
			<h1> <%=dprovider.toUpperCase() %> Drop the file to upload</h1>
			
		</div>

		<div class="dropzone">
			<img src="http://100dayscss.com/codepen/upload.svg" class="upload-icon" />
			<input type="file" name="filename" value="Choose" class="upload-input" multiple  multiple >
			
		</div> 
		
	Secret key:<input type="text"  name="key" value="<%=Secretkey%>"  readonly style="text-align:center"/>

		<input type="submit" class="btn" name="uploadbutton" value="Upload file">

	</div>
	</form>
</div>
</body>
</html>