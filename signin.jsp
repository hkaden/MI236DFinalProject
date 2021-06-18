<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signin</title>
    <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="css/signin.css">
  <link rel="icon" href="image/title1.png" > 
</head>
<body style="background-color :#E8F5E9; ">

  <jsp:include page="./include/header.jsp" />


        <div class="signinbase" style="position: relative; top:150px ;">
            <form action="./controller/signin.jsp" method="post">
            <div class="signintext">
                <br><input type="text" class="signinbox" placeholder="E-mail" name="email"><br><br>
                <br><input type="password" class="signinbox" placeholder="密碼" name="password">
            </div>
            <div class="btn"><button class="signinbtn" type="submit">
                    登入
                </button>
            </div>
            </form>
            <div class="or">
                <div class="orl"></div>
                <div class="ort">or</div>
                <div class="orl" style="position: relative; top:-35px ;float: right;"></div>
            </div>
            
            <div class="btn">

            <button class="signinbtn" onclick="location.href='register.jsp'">
                    註冊帳號
                </button>
               
            </div>
        </div>
    
</div>
    
</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>