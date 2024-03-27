<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
   <title>Crowd | Funding</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
<header class="header">
	

   <nav class="navbar">

      <a href="#" class="logo"> <i class="fab fa-btc fa-lg"></i> Crowd_Funding </a>

      <div class="links">
         <a class="btn btn-danger sm-3" href="index.jsp">home</a>
         <a class="btn btn-danger sm-3" href="EventHosterLogin.jsp">Event Hoster</a>
         <a class="btn btn-danger sm-3" href="InvestorLogin.jsp">Investor</a>
         <a class="btn btn-danger sm-3" href="CrowdFundingLogin.jsp">Crowd Funding</a> 
         <a class="btn btn-danger sm-3" href="Contact.jsp">contact</a>
      </div>

      <div id="menu-btn" class="fa fa-bars"></div>

   </nav>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

   <div class="image">
      <img src="images/pay4.png" alt="">
   </div>

   <div class="content">
      <h3>A  Management Mechanism for Crowdfunding!!!</h3> 
      
      
   </div>

</section>





<!-- services section starts  -->

<section class="services" id="services">

   <h1 class="heading"> Events <span>We Offer</span> </h1>

   <div class="box-container">

      <div class="box" href="AvailableEvents.jsp">
      <a href="AvailableEvents.jsp"> 
         <img src="images/medical.png" alt="" >
     
         <h3>Medical Expenses Fundraising</h3>
         <p>Supporting the financial burdens of medical expenses through compassionate fundraising efforts.</p>
             </a>
      </div>

      <div class="box">
      <a href="AvailableEvents.jsp"> 
         <img src="images/Env.jpg" alt="" >
         <h3>Environmental Conservation</h3>
         <p>Support vital environmental conservation projects through our fundraising efforts to protect our planet's biodiversity and ecosystems.</p>
         </a>
      </div>

      <div class="box">
      <a href="AvailableEvents.jsp"> 
         <img src="images/edu.jpg" alt="">
         <h3>Educational Scholarships</h3>
         <p>Empowering futures through educational scholarships with community-driven fundraising.</p>
         </a>
      </div>

      <div class="box">
      <a href="AvailableEvents.jsp"> 
         <img src="images/comun.png" alt="">
         <h3>Community Development</h3>
         <p>Community development fundraising empowers local initiatives through financial support, fostering sustainable growth and positive change.</p>
         </a>
      </div>

      <div class="box">
      <a href="AvailableEvents.jsp"> 
         <img src="images/animal.png" alt="">
         <h3>Animal Welfare</h3>
         <p>Supporting the well-being of animals through compassionate fundraising initiatives.</p>
         </a>
      </div>

      <div class="box">
      <a href="AvailableEvents.jsp"> 
         <img src="images/start.jpg" alt="">
         <h3>Startup Ideas</h3>
         <p>A platform utilizing blockchain for transparent fundraising and investment in early-stage startups.</p>
         </a>
      </div>

   </div>

</section>




<script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<script>
   lightGallery(document.querySelector('.gallery .gallery-container'));
</script>
</body>
</html>