<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign up</title>
    <link rel="stylesheet" href="css/stylelogsign.css">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhaina+2&family=Lato:ital@1&display=swap" rel="stylesheet">
</head>
<body>
    <div class="signupbox">
            <h1>Sign Up</h1>
            <h4>It's free and only takes a minutes</h4>
            <form action="Register" method="post" >
                <label for="fname">First Name</label>
                <input type="text" name="fname">
                <label>Last Name</label>
                <input type="text" name="lname">
                <label>Username</label>
                <input type="text" name="username">
                <label>Password</label>
                <input type="password" name="password">
                <label>Confirm Password</label>
                <input type="password" name="confirm_password">
                <input type="submit" value="submit" class="subbutton">

            </form>
            <p>By clicking the sign up button,you agree to our<br>
            <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a>
            </p>
       </div>
       <p class="para">Already have and account?<a href="#">Login here</a></p>
</body>
</html>