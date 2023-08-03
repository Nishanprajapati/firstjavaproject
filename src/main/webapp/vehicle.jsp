<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Vehicle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/3a36052df8.js" crossorigin="anonymous"> </script>
    <script src="js/vehicledisplay.js"></script>
    <title>Vehicle Information</title>
</head>
<body>
    <header class="header">
        <img src="images/logo1.jpg" alt="thisislogo" class="logo">
      <nav class="navbar">
          <ul>
              <li><a href="index.jsp" class="links">Home</a></li>
              <li><a href="lend.jsp" class="links">Lend</a></li>
              <li><a href="contact.jsp" class="links">Contact Us</a></li>
              <li style="z-index:100"><a href="logout.jsp" class="links">Log Out</a></li>

          </ul>
      </nav>
          <div class="header_search" >
          <p class="welcome"></p>
              <a href="#"><div class="media bell"><i class="fa-solid fa-bell"></i></div></a>
              <a href="#"><div class="media log"><i class="fa-solid fa-circle-user"></i></div></a>
          </div>
  </header>
    
   
   
   
    <div class="div">
        <img src="https://imgd.aeplcdn.com/1280x720/n/cw/ec/101487/classic-350-right-front-three-quarter-6.jpeg?isig=0&q=80" alt="this is bike" class="renf" >
       <div class="div1">
<pre>


<h2> Black Royal Enfield 350</h2><hr color="Black" width="290">
     Vehicle name:Royal Enfield Classic 350
     Location: Thimi
     Rating:5
     Price:1500/day
     status: New


    <b>Note:</b>
     If a customer damages any part of the vehicle,
     they will be responsible for covering the cost of the damage.

	<form>
	
    <input type="submit" value="Book Now" class="submitbutton1"  onclick="formDisplay()">
    </form>
</pre>
       </div> 
    </div>
    <pre>



    </pre>

    
   <div class="bike_description">
    Mileage: The mileage of the Royal Enfield 350 can vary depending on various factors such as riding conditions, maintenance, and individual riding style. On average, the Royal Enfield 350 delivers a mileage of around 30-35 kilometers per liter (km/l). However, it's important to note that mileage can vary and may be affected by factors like traffic conditions, terrain, and overall bike maintenance.

    Parts: Royal Enfield has a wide network of dealerships and service centers globally, making it relatively easy to find spare parts for the Royal Enfield 350. As one of the most popular models from Royal Enfield, spare parts for the 350 are widely available. The company also provides genuine spare parts through authorized dealers, ensuring the authenticity and quality of the components.
   </div>
    <pre>



    </pre>
    <div class="review"><b>     Ratings and Reviews:</b>
        

        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span>
        <span class="fa fa-star"></span>
        <hr>
    </div>
    <textarea name="text" placeholder="......Give Review......" class="textare"></textarea>


    <div class="contactcontainer" id="contactcontainer">
        <div class="formcontainer">
          <p class="containerheader">Fill the form</p><hr color="black">
          <form action="" method="post">
              <p><label>Name*:</label><input type="text" name="name" required class="textare form1"></p>
              <p><label>Email*:</label><input type="email" name="email" required class="textare form2"></p>
              <p><label>Number*:</label><input type="number" name="number" required class="textare form3"></p>
              <p><label>Address*:</label><input type="text" name="address" required class="textare form4"></p>
              <p><label>Citizenship photo*:<input type="file" name="ctz" required class=" form5"></label></p>
              <p><label>license photo*:<input type="file" name="lic" required class=" form6"></label></p>
  
              <input type="submit" value="Submit" class="submitbutton">
          </form>
        </div>
     </div>

     <footer>
        <div class="footer_container">
            <div class="footer">
                <img src="images/logo1.jpg" alt="thisislogo" class="logo">
            </div>
           <div class="footer1">
            <div class="footer">
                <p class="footer_topic">LINKS</p>
                <hr color="white" width="150">
                <a href="index.jsp"><p class="f1">Home</p></a>
                <a href="vehicle.jsp"><p class="f2">Vehicle</p></a>
                <a href="contact.jsp"><p class="f3">Contact Us</p></a>
                <a href="lend.jsp"><p class="f4">Lend</p></a>
    
            </div>
           </div>
           <div class="footer1">
            <div class="footer">
                <p class="footer_topic">FOLLOW US ON</p>
                <hr color="white" width="230">
                <div class="socialmedia">
                    <a href="https://www.facebook.com/"> <div class="media fb"><i class="fa-brands fa-facebook"></i></div></a>
                        <a href="https://www.instagram.com/"> <div class="media insta"><i class="fa-brands fa-instagram"></i></div></a>
                        <a href="https://twitter.com/"><div class="media twitter"><i class="fa-brands fa-twitter"></i></div></a>
                        <a href="https://www.youtube.com/"> <div class="media yt"><i class="fa-brands fa-youtube"></i></div></a>
                        <a href="https://www.linkedin.com/"> <div class="media li"><i class="fa-brands fa-linkedin"></i></div></a>
                </div>
            </div>
           </div>
        </div>
        <hr color="#3E8090">
        <p class="copyright">Copyright &copy; 2022. All Rights Reserved</p>
    </footer>

</body>
</html>