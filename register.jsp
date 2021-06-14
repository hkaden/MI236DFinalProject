<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>register</title>
    <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="css/register.css">
  <link rel="icon" href="image/title1.png" > 
</head>
<body style="background-color :#E8F5E9; ">
      <jsp:include page="./include/header.jsp" />
      <h1 class="h1">註冊帳號</h1>
    <div class="registerbase" style="position: relative; top:150px ;">
      <form action="./controller/register.jsp" method="post">
        <div class="registertext">
            <br><input type="text" class="registerbox" name="name" placeholder="姓名"><br>
            <br><input type="date" class="registerbox" name="birthday" placeholder="生日"><br>
            <br><input type="text" class="registerbox" name="email" placeholder="電子信箱"><br>
            <br><input type="text" class="registerbox" name="phone" placeholder="手機號碼"><br>
            <br><input type="password" class="registerbox" name="password" placeholder="密碼"><br>
            <br><input type="password" class="registerbox" name="passwordConfim" placeholder="確認密碼"><br>
        </div>
        <div class="btn"><button class="registerbtn" type="submit">
                確認
            </button>
        </div>
    </form>
        
    </div>
</div>
</body>
<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>