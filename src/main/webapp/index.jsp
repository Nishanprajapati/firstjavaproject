<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="com.rideease.service.user.VendorService"%>
<%@page import="com.rideease.model.Vendor"%>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
    String sescon = (String)session.getAttribute("username");
	if(sescon == null){
	    String permissionmsg="Please login first!!!";
	    request.setAttribute("permissionmsg",permissionmsg);
	    request.setAttribute("username",sescon);
	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	    dispatcher.forward(request, response);
   }
%>

<!DOCTYPE html>
<html>
<head>
	
	
	
	<meta charset="UTF-8">
	<title>Index</title>
 	<link rel="stylesheet" href="css/index.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/3a36052df8.js" crossorigin="anonymous"> </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.all.min.js"></script>
</head>
<body>
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
    <section class="index_body_container">
       <div >
            <div>
                <p class="bigheading_text">Vehicles For Rent</p>
                <p class="smallheading_text">Get the Vehicles of your choice.</p>
                <hr class="hrline_body">
            </div>
            <div>
                <p class="detail_text">
                   <span>RideEase</span> provides a user-friendly interface that allows customers to easily book a vehicle of their choice for their desired duration.
                </p>
            </div>
            <div class="explore">
            <a href="allvehicle.jsp" style="text-decoration:none; color:white">
                <button class="explore_button">
                   Explore Vehicles<i class='bx bx-right-arrow-alt'></i>
                </button>
                </a>
            </div>
       </div>
       <div class="blue_box_container" >
            <div class="blue_box">

            </div>
            
       </div>
    </section>
    <img src="images/car.png" alt="" class="car">


    



       <hr class="hrline_top">
    <div class="vehicle_detail_input">
       <form action="post">
            <div class="vehicle_detail">
                <div class="input_container">
                    <div class="vehicle_input_line">
                        <div><span>Pickup Date :</span><input type="text" class="form_field"></div>
                        <div><span>From :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><input type="text" class="form_field"></div>
                    </div>
                    <div class="vehicle_input_line">
                        <div><span>Pickup Time: </span><input type="text" class="form_field"></div>
                        <div><span>Dropoff Date :</span><input type="text" class="form_field"></div>
                    </div>
                </div>
                <div>
                    <input type="submit" value="Search" class="submit">
                </div>
            </div>
       </form>

    </div>
    <hr class="hrline_bottom">



	<%
    String successMessage = (String) request.getAttribute("successMessage");
    String errorMessage = (String) request.getAttribute("errorMessage");
%>

<% if (successMessage != null && !successMessage.isEmpty()) { %>
    <script>
        Swal.fire({
            icon: 'success',
            title: '<%= successMessage %>',
            customClass: {
                container: 'custom-text',
                confirmButton: 'sweet-btn',
            }
        });
    </script>
<% } %>

<% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <script>
        Swal.fire({
            icon: 'error',
            title: '<%= errorMessage %>',
            customClass: {
                container: 'custom-text',
                confirmButton: 'sweet-btn',
            }
        });
    </script>
<% } %>
        
    <div class="vehicles">
        <span class="vehicle_head">Bikes</span>
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
                        <p class="detail_head"><%=vendor.getVehicleName() %></p>
                        <hr class="hrline_detail">
                        <p class="detail_body"><%=vendor.getVehicleName() %></p>
                        <p class="detail_body">Location:<%=vendor.getCurrentLocation() %></p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs<%=vendor.getPerDay() %> per day</p>
                        <p class="detail_body">Vehicle Owner:<%=vendor.getName() %></p>
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
	
	 

    <div class="vehicles">
        <span class="vehicle_head">Cars</span>
        <hr>
        <div class="vehicles_container">
        <a href="vehicle.jsp" style="text-decoration:none;  color:black" >
            <div class="vehicle_view">
                <div class="vehicle_img_container">
                    <img src="images/carimg.jpg" alt="" class="vehicle_image">
                </div>
                <div class="vehicle_detail_container">
                    <div class="details_view">
                        <p class="detail_head">lamborghini</p>
                        <hr class="hrline_detail">
                        <p class="detail_body">Harley Davidson livewire</p>
                        <p class="detail_body">Location:Madhyapur Thimi,Bhaktapur</p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs 1500 /- per day</p>
                        <p class="detail_status">like new</p>
                    </div>
                </div>
               </div>
                </a>
                
                  <a href="vehicle.jsp" style="text-decoration:none;  color:black">
            <div class="vehicle_view">
                <div class="vehicle_img_container">
                    <img src="images/car.png" alt="" class="vehicle_image">
                </div>
                <div class="vehicle_detail_container">
                    <div class="details_view">
                        <p class="detail_head">Mercedes</p>
                        <hr class="hrline_detail">
                        <p class="detail_body">Harley Davidson livewire</p>
                        <p class="detail_body">Location:Madhyapur Thimi,Bhaktapur</p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs 1500 /- per day</p>
                        <p class="detail_status">like new</p>
                    </div>
                </div>
               </div>
                </a>
                
                  <a href="vehicle.jsp" style="text-decoration:none;  color:black">
            <div class="vehicle_view">
                <div class="vehicle_img_container">
                    <img src="images/car.png" alt="" class="vehicle_image">
                </div>
                <div class="vehicle_detail_container">
                    <div class="details_view">
                        <p class="detail_head">Mercedes</p>
                        <hr class="hrline_detail">
                        <p class="detail_body">Harley Davidson livewire</p>
                        <p class="detail_body">Location:Madhyapur Thimi,Bhaktapur</p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs 1500 /- per day</p>
                        <p class="detail_status">like new</p>
                    </div>
                </div>
               </div>
                </a>
                
                  <a href="vehicle.jsp" style="text-decoration:none;  color:black">
            <div class="vehicle_view">
                <div class="vehicle_img_container">
                    <img src="images/carimg.jpg" alt="" class="vehicle_image">
                </div>
                <div class="vehicle_detail_container">
                    <div class="details_view">
                        <p class="detail_head">lamborghini</p>
                        <hr class="hrline_detail">
                        <p class="detail_body">Harley Davidson livewire</p>
                        <p class="detail_body">Location:Madhyapur Thimi,Bhaktapur</p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs 1500 /- per day</p>
                        <p class="detail_status">like new</p>
                    </div>
                </div>
               </div>
                </a>
                
                  <a href="vehicle.jsp" style="text-decoration:none;  color:black">
            <div class="vehicle_view">
                <div class="vehicle_img_container">
                    <img src="images/car.png" alt="" class="vehicle_image">
                </div>
                <div class="vehicle_detail_container">
                    <div class="details_view">
                        <p class="detail_head">Mercedes</p>
                        <hr class="hrline_detail">
                        <p class="detail_body">Harley Davidson livewire</p>
                        <p class="detail_body">Location:Madhyapur Thimi,Bhaktapur</p>
                        <p class="detail_body">Rating: 5 <i class='bx bxs-star' ></i></p>
                        <p class="detail_body">Price:Rs 1500 /- per day</p>
                        <p class="detail_status">like new</p>
                    </div>
                </div>
               </div>
                </a>
           
           
        </div>
        <hr>
    </div>







    <div class="benefits_container">
        <p class="benefits_heading">Benefits of RideEase</p>
        <div class="benefits_detail_container">
            <div class="benefits_detail">
                <p class="icon"><i class='bx bx-dollar-circle' ></i></p>
                <p class="benefits_text">Quality Vehicles at low price</p>
            </div>
            <div class="benefits_detail">
                <p class="icon"><i class='bx bxs-wrench'></i></p>
                <p class="benefits_text">Get Service Everyday</p>
            </div>
            <div class="benefits_detail">
                <p class="icon"><i class='bx bx-dollar' ></i></p>
                <p class="benefits_text">Earn Money by renting vehicles</p>
            </div>
            <div class="benefits_detail">
                <p class="icon"><i class='bx bx-dollar-circle' ></i></p>
                <p class="benefits_text">Quality Vehicles at low price</p>
            </div>
           
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