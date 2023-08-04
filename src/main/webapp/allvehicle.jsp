<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.rideease.service.user.VendorService"%>
<%@page import="com.rideease.model.Vendor"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All vehicles</title>
    <link rel="stylesheet" href="css/allvehicle.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/3a36052df8.js" crossorigin="anonymous"></script>
</head>
<body >
      <!-- header -->

      <header class="header">
          <img src="images/logo1.jpg" alt="thisislogo" class="logo">
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp" class="links">Home</a></li>
                <li><a href="lend.jsp" class="links">Lend</a></li>
                <li><a href="contact.jsp" class="links">Contact Us</a></li>
                <li><a href="allvehicle.jsp" class="links">All Vehicles</a></li>
                <li style="z-index:100"><a href="logout.jsp" class="links">Log Out</a></li>
            </ul>
        </nav>
            <div class="header_search" >
            <p class="welcome"></p>
                <a href="#"><div class="media bell"><i class="fa-solid fa-bell"></i></div></a>
                <a href="#"><div class="media log"><i class="fa-solid fa-circle-user"></i></div></a>
            </div>
    </header>


    <div class="vehicles">
        <span class="vehicle_head">All Bikes</span>
        <hr>
        <div class="vehicles_container">
         <%
            //fetching list of vendors
            VendorService vendorService=new VendorService();
            List < Vendor > listVendors    =vendorService.getAllVendors();
            if(!listVendors.isEmpty()){%>             
            
             <%for(Vendor vendor:listVendors){%> 
           <a href="vehicle.jsp" style="text-decoration:none;  color:black">
            <div class="vehicle_view">
                <div class="vehicle_img_container">
                    <img src="VendorImage?vendor_id=<%=vendor.getId() %>" alt="" class="vehicle_image">
                </div>
                <div class="vehicle_detail_container">
                    <div class="details_view">
                        <p class="detail_head"><%=vendor.getName() %></p>
                        <hr class="hrline_detail">
                        <p class="detail_body"><%=vendor.getVehicleName() %></p>
                        <p class="detail_body">Location:<%=vendor.getCurrentLocation() %></p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs<%=vendor.getPerDay() %> per day</p>
                        <p class="detail_body">Vehicle Owner=<%=vendor.getName() %></p>
                        <p class="detail_status"><%=vendor.getVehicleStatus() %></p>
                    </div>
                </div>
            </div>
            </a>
            <%}%> 
         <%}%> 
         
          <%if(listVendors.isEmpty()){%>
        <h1 style="color: red;"> List is Not Available !!!</h1>
    <%}%>
            
           
           
        </div>


        
        <hr>
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
                <a href="lend.jsp"><p class="f2">lend</p></a>
                <a href="contact.jsp"><p class="f3">Contact Us</p></a>
                <a href="allvehicle.jsp"><p class="f2">All vehicle</p></a>
                <a href="logout.jsp"><p class="f4">logout</p></a>
    
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