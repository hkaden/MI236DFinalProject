<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.* "%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>got your bag</title>
  <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="css/index.css">
 <link rel="icon" href="image/title1.png" > 
</head>

<body style="background-color :#E8F5E9; ">
<% 
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            hitsCount = 1;
         } else {
            /* return visit */
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
%>
<jsp:include page="./include/header.jsp" />    
 

    
    
    <div class="social">
      <a href="https://zh-tw.facebook.com/"><i class="fab fa-facebook-f"></i></a>
      <a href="mailto:selina.chiu99@gmail.com"><i class="fa fa-envelope-o"></i></a>
      <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>   
      </div>






  <div class="image2">
    <div><img src="image/index1.jpg" width="1250px" height="480px"></div>
    <div><img src="image/index2.jpg" width="1250px" height="480px"></div>
    <div><img src="image/index3.jpg"width=" 1250px" height="480px"></div>

  </div>





  <div>
      <h1 class="h1">熱銷商品</h1>
  </div>


<div class="container">
            <% 
            PreparedStatement ProductQuery = null;
	        ProductQuery=con.prepareStatement("SELECT * FROM product WHERE isHotSale = 1");
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            while (ProductQueryResult.next()) {

            
            
        %>
<div class="item">
    <img src="<%= ProductQueryResult.getString("Url") %>" class="">
    <a href="product.jsp?id=<%= ProductQueryResult.getString("ProductId") %>" class="text10">
        <pre>  <%= ProductQueryResult.getString("ProductName") %></pre></a>
</div>

<% } %>
</div>

 


</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
  <p>Copyright 2021 © All rights reserved. 本網站已被訪問 <%= hitsCount%> 次</p>

</div>




</html>