<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Bank Account</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="css1/style1.css">

</head>
<body>
<%
Random r = new Random(System.currentTimeMillis());
int accountnumber = ((200 + r.nextInt(160)) * 1000000 + r.nextInt(1000000));
System.out.println("The Account Number is: "+accountnumber);
%>
<div class="container rounded bg-white mt-5">
    <div class="row">
        <div class="col-md-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="images/Bpay.png" width="200"><span class="font-weight-bold">Bpay Account</span><span class="text-black-50">For</span><span>Donation account creation</span></div>
        </div>
        <div class="col-md-8">
        <form action="BankAccountServlet" method="post">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                        <h4>Create Your Bank Account</h4>
                    </div>
                    <h6 class="text-right"></h6>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><input type="text" class="form-control" name="name" placeholder="Name" required ></div>
                    <div class="col-md-6"><input type="text" class="form-control" name="username" placeholder="User Name" required></div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><input type="password" class="form-control" name="password" placeholder="Password" required ></div>
                    <div class="col-md-6"><input type="password" class="form-control" name="cpassword" placeholder="Confirm Password" required></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="email" class="form-control" name="email" placeholder="E-mail" required></div>
                    <div class="col-md-6"><input type="text" class="form-control" name="number" placeholder="Phone number" required></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="text" class="form-control" name="address" placeholder="Address" required></div>
                    <div class="col-md-6"><input type="text" class="form-control" name="state" placeholder="State" required></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="text" class="form-control" name="country" placeholder="Country" required></div>
                    <div class="col-md-6"><input type="text" class="form-control" name="pincode" placeholder="Pincode" required></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="text" class="form-control" name="age" placeholder="Age" required></div>
                    <div class="col-md-6"><input type="text" class="form-control" name="gender" placeholder="Gender" required></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="text" class="form-control" name="bankname" placeholder="Bank Name" required></div>
                    <div class="col-md-6"><input type="text" class="form-control" name="amount" placeholder="Deposite Initial Amount" required></div>
                </div>
                <div class="row mt-3">
                	<div class="col-md-3"><label>Account Number : </label></div>
                    <div class="col-md-9"><input type="text" class="form-control" name="accountnumber" placeholder="Account Number : <%=accountnumber%>" value="<%=accountnumber%>" required readonly></div>
                    
                </div>
                
                <div class="mt-5 text-right"><button class="btn btn-primary profile-button" type="submit">Create Account</button></div>
            </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>