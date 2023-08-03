<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/styleecontact.css">
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
              <li><a href="login.jsp" class="links">Log in</a></li>
          </ul>
      </nav>
          <div class="header_search" >
          <p class="welcome"></p>
              <a href="#"><div class="media bell"><i class="fa-solid fa-bell"></i></div></a>
              <a href="#"><div class="media log"><i class="fa-solid fa-circle-user"></i></div></a>
          </div>
  </header>
   <div class="contactcontainer">
      <div class="formcontainer">
        <p class="containerheader"> Contact Us</p><hr color="black">
        <form action="" method="post">
            <p><label>Name*:</label><input type="text" name="name" required class="textare form1"></p>
            <p><label>Email*:</label><input type="email" name="email" required class="textare form2"></p>
            <p><label>Number*:</label><input type="number" name="number" required class="textare form3"></p>
            <p><label>Address*:</label><input type="text" name="address" required class="textare form4"></p>
            <p><textarea name="text" placeholder="    Say Something.... " class="textaree form5"></textarea></p>
            <input type="Submit" value="Send Message >>" class="submitbutton">
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