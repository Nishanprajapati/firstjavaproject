<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
 <link rel="stylesheet" href="css/stylelogsign.css">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhaina+2&family=Lato:ital@1&display=swap" rel="stylesheet">
</head>
<body>
         <!-- <img src="image/avatar.png" class="avatar" alt=""> -->
    <div class="login">
        <h1>Login</h1>
         <h4 style="text-align:center; color: green; margin: auto;">${permissionmsg}</h4>
        <form action="login" method="post">
            <label>Username</label>
                <input type="text" name="username" autocomplete="off">
                <label>Password</label>
                <input type="password" name="password">
                <input type="submit" value="submit" name="submit" class="subbutton">
        </form>
    </div>
    <p class="para">Not have a account?<a href="signup.jsp">Sign Up Here</a></p>
</body>
</html>