
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>contactus</title>
  <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="css/contactus.css">
 <link rel="icon" href="image/title1.png" > 
</head>


  


<body style="background-color :#E8F5E9; ">
<jsp:include page="./include/header.jsp" />
    <div class="link-top1"></div>

    <div class="contact">
        <form class="container" method="post" action="./controller/contactus.jsp">
         
          
          <label for="name"><b>姓名</b></label>
          <input type="text" class="textn" placeholder="name" name="name">
  
          <label for="email"><b>信箱</b></label>
          <input type="text" class="textn" placeholder="email" name="email">
  
          <label for="say"><b>您的建議</b></label><br>
          <textarea placeholder="say somthing" name="message"
            style="height:200px;width:100%;padding: 12px 20px; background-color:#f1f1f1;border: none;"></textarea>
          <button type="submit" class="btn" style="position: relative; left: 160px;">送出</button>
        </form>
      </div>


      <div class="thank">
        <b>謝謝您的建議<br>
        &nbsp;&nbsp;&nbsp;我們會盡快回覆您</b><br><p></p>
        <a href="https://www.instagram.com/" target="blank"> <img src="image/ig.png" class="ig"  width="120" height="120" ></a>
        <a href="mailto:selina.chiu99@gmail.com" target="blank"><img src="image/mail.png" class="mail"  width="120" height="120" ></a>
        <a href="https://zh-tw.facebook.com/" target="blank"><img src="image/fb.png" class="fb"  width="125" height="125"></a>

      </div>






</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
  <p>Copyright 2021 © All rights reserved.</p>

</div>




</html>