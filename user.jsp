<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="./config.jsp" %>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user1</title>
    <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/user1.css">
   <link rel="icon" href="image/title1.png" > 
  </head>


<body style="background-color :#E8F5E9; ">
  <jsp:include page="./include/header.jsp" />    
  <a href="login.html"><button class="administratorbtn" > 管理員點這</button></a>
   

    <%

    if(session.getAttribute("email") != null ){
      sql = "SELECT * FROM member WHERE Email=?"; 
      PreparedStatement pstmt = null;
	    pstmt=con.prepareStatement(sql);
      pstmt.setString(1,(String)session.getAttribute("email"));
      ResultSet paperrs1 = pstmt.executeQuery();

      String email="", pwd="", name="", phone="",brithday="";
      while(paperrs1.next()){
          name=paperrs1.getString("MemberName");
          email=paperrs1.getString("Email");
          pwd=paperrs1.getString("Password");
          phone=paperrs1.getString("PhoneNumber");
          brithday=paperrs1.getString("Birthday");
      } 
 
%>
    
    <img src="image/photo.png" class="photo" style="position: relative; top:190px ; left: 130px;">

    <div class="photobase" style="position: relative; top:-320px ; left: 230px;">
        <form method="post" action="./controller/userUpdate.jsp">
          <div class="phototext">
              <br><input type="text" class="photobox" name="name" value="<%=name%>" placeholder="姓名"><br>
              <br><input type="date" class="photobox" name="brithday" value="<%=brithday%>" placeholder="生日"><br>
              <br><input type="text" class="photobox" name="email" value="<%=email%>" placeholder="電子信箱"><br>
              <br><input type="text" class="photobox"  name="phone" value="<%=phone%>" placeholder="手機號碼"><br>  
              <br><input type="password" class="photobox"  name="newpassword" value="" placeholder="新密碼 ( 不修改請留空 )"><br> 
          </div>
          <div class="btn"><button class="photobtn" type="submit">
                  修改
              </button>
          </div>
        </form>
        
    </div>
</div>

<!--消費紀錄-->

    <div class="link-top2"></div>
    <div class="t2"><pre>  消費&評分評論紀錄</pre></div>

    <img src="image/bag9.jpg" style="border:2px black solid;" class="bag1" >

    <div class="t1">
        <a href="product 3-1.html"  style="text-decoration:none;" ><h2 class="a1">NIKE 大容量多功能運動腰包</h2></a> 
        <div class="t-1">
            <pre style="font-size: 20px;" >  
                喜歡:<img src="image/4star.JPG"  class="star" > <br>                數量:1<br>                金額:950        
                評論:材質很好，我很喜歡!                              
                                                                        購買日期:2019/04/20
                         
                       </pre> 
       </div>
    </div>

    <img src="image/bag2.jpg" style="border:2px black solid;" class="bag2" >

    <div class="t3">
        <a href="product 1-2.html"  style="text-decoration:none;" ><h2 class="a1">Adidas校園風大容量後背包</h2></a> 
        <div class="t-2">
            <pre style="font-size: 20px;" >  
                喜歡:<img src="image/3star.png"  class="star2" > <br>                數量:1<br>                金額:1550        
                評論:容量很大，很喜歡!                              
                                                                        購買日期:2020/07/10
                         
                       </pre>     
       </div>
    </div>


<%
     } else {
          out.println("<script type=\"text/javascript\">");
          out.println("alert('請先登陸!');");
          out.println("location='./signin.jsp';");
          out.println("</script>");
    }
%>
</body>

  <div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>