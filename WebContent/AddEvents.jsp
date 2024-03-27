<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New | Events</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
font-family: Arial, Helvetica, sans-serif;
background: #f2f2f2;
}

* {
box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=file] {
  width: 100%;
  padding: 12px;
  background-color:  #ffffff;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color:  #ff471a;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #ffffff;
  color: #000000;
}

.container {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 1);
  margin-left: 230px;	
  border-radius: 35px;
  max-width:  900px ;
  background-color: #a6a6a6;
  padding:  55px  ;
}
</style>
</head>
<body>

<div class="container">
	<h2 style="text-align: center;">Add Event</h2>
  	<form role="form" action="AddEventServlet" method="post" enctype="multipart/form-data">
    <label for="fname">Event Name</label>
    <input type="text" id="fname" name="productname" placeholder="Enter Event Name">

    <label for="lname">Event Donate Amount</label>
    <input type="text" id="lname" name="productprice" placeholder="Enter Event Donate Amount">

    <label for="country">Category</label>
    <input type="text" id="country" name="category" placeholder="Event Category">
        
    <label for="lname">Upload Image</label>
    <input type="file" id="lname" name="filename"> <br>
	<br>
    <label for="subject">Event Description</label>
    <textarea id="subject" name="description" placeholder="Write Product Description" style="height:200px"></textarea>

    <input type="submit" value="Add Event">
  </form>
</div>


</body>
</html>