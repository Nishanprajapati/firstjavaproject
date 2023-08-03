<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/lend.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/3a36052df8.js" crossorigin="anonymous"></script>

    <title>Lend your Vehicle</title>
</head>
<body>
    <header class="header">
        <img src="images/logo1.jpg" alt="thisislogo" class="logo">
      <nav class="navbar">
          <ul>
              <li><a href="index.jsp" class="links">Home</a></li>
              <li><a href="lend.jsp" class="links">Lend</a></li>
              <li><a href="contact.jsp" class="links">Contact Us</a></li>
              <li><a href="login.jsp" class="links">Log in</a></li>
          </ul>
      </nav>
          <div class="header_search" >
          <p class="welcome"></p>
              <a href="#"><div class="media bell"><i class="fa-solid fa-bell"></i></div></a>
              <a href="#"><div class="media log"><i class="fa-solid fa-circle-user"></i></div></a>
          </div>
  </header>
    <div class="title">
        Lend Your Vehicle
    </div>
    <div class="container">
        <p class="container__info_title">Enter your Information</p>
        <hr>
        <form action="<%= request.getContextPath()%>/lendservlet" method="post" enctype="multipart/form-data">
            <div class="form_container">
                <div >
                    <p class="gap">Name</p>
                    <div class="form_field">
                        <input type="text" name="name" >
                    </div>
                </div>
                <div >
                        <p class="gap">Email</p>
                        <div class="form_field">
                            <input type="email" name="email" >
                        </div>
                </div>
            </div>
            <div class="form_container">
                <div >
                    <p class="gap">Phone number</p>
                    <div class="form_field">
                        <input type="tel" name="p_number" >
                    </div>
                </div>
                <div >
                        <p class="gap">Current location</p>
                        <div class="form_field">
                            <input type="text"  name="c_location">
                        </div>
                </div>
            </div>
            <div class="form_container">
                <div >
                    <p class="gap">Pick up location</p>
                    <div class="form_field">
                        <input type="text" name="p_location">
                    </div>
                </div>
                <div >
                        <p class="gap">Drop off location</p>
                        <div class="form_field">
                            <input type="text" name="d_location" >
                        </div>
                </div>
            </div>
            <div class="form_container">
                <div >
                    <p class="gap">License plate no</p>
                    <div class="form_field">
                        <input type="text" name="licence_plate_no">
                    </div>
                </div>
                <div >
                        <p class="gap">Vehicle type</p>
                        <div class="form_field">
                            <input type="text" name="v_type">
                        </div>
                </div>
            </div>
            <div class="form_container">
                <div >
                    <p class="gap">Price</p>
                    <div class="price_form">
                       <div>
                            <p class="price__ratetype">Per Day:</p>
                            <div class="form_field1">
                                <input type="number" name="p_day" >
                            </div>
                       </div>
                       <div class="price__div2">
                            <p class="price__ratetype">Per Hour: &nbsp;</p>
                            <div class="form_field1">
                                <input type="number"  name="p_hour">
                            </div>
                   </div>
                    
                    </div>
                </div>
                <div >
                        <p class="gap">Upload your Vehicle Image</p>
                        <div class="form_field">
                            <input type="file" class="choose_files" name="vehicle_image">
                        </div>
                </div>
            </div>
            <div class="form_container">
                <div >
                    <p class="gap">Upload your citizenship image</p>
                    <div class="form_field ">
                        <input type="file" class="choose_files" name="citizenship_image">
                    </div>
                </div>
                <div >
                        <p class="gap">Proof of insurance coverage of vehicles</p>
                        <div class="form_field">
                            <input type="file" class="choose_files" name="insurance_image">
                        </div>
                </div>
            </div>
            <div class="submit_container">
                <input type="reset" value="Cancel" name="cancel" class="cancel">
                <input type="submit" value="Submit" name="submit" class="submit">
            </div>
        </form>
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
                <a href="login.jsp"><p class="f4">login</p></a>
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