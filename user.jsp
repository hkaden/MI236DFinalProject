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
  <a href="admin.jsp"><button class="administratorbtn" > 管理員頁面</button></a>
   

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

    

    <div class="t1">
      <div class="container">
      <%
      sql = "SELECT * FROM `order` INNER JOIN `product` ON order.ProductId = product.ProductId INNER JOIN `member` ON order.MemberId = member.MemberId WHERE member.Email = ?;"; 
      PreparedStatement pstmt2 = null;
	    pstmt2=con.prepareStatement(sql);
      pstmt2.setString(1,(String)session.getAttribute("email"));
      ResultSet paperrs12 = pstmt2.executeQuery();
      while(paperrs12.next()){
        PreparedStatement reviewQuery = null;
        reviewQuery = con.prepareStatement("SELECT * FROM `review` WHERE OrderId = ?");
        reviewQuery.setString(1, paperrs12.getString("OrderId"));
        ResultSet reviewQueryResult = reviewQuery.executeQuery();
      %>
       
        <div class="item">
          <div class="itemPic">
            <img src="<%=paperrs12.getString("Url")%>" style="border:2px black solid;" >
          </div>
              <a href="product 3-1.html"  style="text-decoration:none;" ><h2 class="a1"><%=paperrs12.getString("ProductName")%></h2></a> 

                  <p style="font-size: 20px;" >  
                  <% if ( reviewQueryResult.next()) { %>
                      <img src="image/<%=reviewQueryResult.getString("Score")%>star.png" ><br>
                      數量:<%=paperrs12.getString("Quantity")%><br>
                      金額:$<%=paperrs12.getString("Total")%><br>
                      購買日期:<%=paperrs12.getString("Date")%><br>
                      評價:<%=reviewQueryResult.getString("Comment")%><br>
                      
                      <% } else { %>
                                          
                      數量:<%=paperrs12.getString("Quantity")%><br>
                      金額:$<%=paperrs12.getString("Total")%><br>
                      購買日期:<%=paperrs12.getString("Date")%><br>
                      <form method="post" action="./controller/complateOrder.jsp">
                       <input type="hidden" name="orderId" value="<%= paperrs12.getString("OrderId") %>">
                      <select name="score">
                        <option value="" selected>請為這件商品評分</option>
                        <option value="1">1分</option>
                        <option value="2">2分</option>
                        <option value="3">3分</option>
                        <option value="4">4分</option>
                        <option value="5">5分</option>
                      </select>
<textarea name="comment" rows="4" cols="50" type="text" placeholder="留下運語吧"></textarea>
                     <button class="complatebtn" type="submit">
                              確認收貨
                          </button>     
                                         </form>                                     
                              <% } %>
                            </p> 

        </div>
        
      <% } %>

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