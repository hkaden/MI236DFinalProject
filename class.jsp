
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>腰包</title>
  <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="css/product 3.css">
  <link rel="icon" href="image/title1.png" > 
 
</head>


  


<body style="background-color :#E8F5E9; ">
<jsp:include page="./include/header.jsp" />   



<div class="container">
            <% 
            PreparedStatement ProductQuery = null;
	        ProductQuery=con.prepareStatement("SELECT * FROM product WHERE ClassId = ? AND Stock > 0");
            ProductQuery.setString(1, request.getParameter("id"));
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            while (ProductQueryResult.next()) {

            
            
        %>
<div class="item">
<img src="<%= ProductQueryResult.getString("Url") %>" style="border:2px black solid;"  >
    <a href="product.jsp?id=<%= ProductQueryResult.getString("ProductId") %>"  style="text-decoration:none;" ><h2 class=""><%= ProductQueryResult.getString("ProductName") %></h2></a> 
    <div class="itemDetail">
    
       
            價格:$ <%= ProductQueryResult.getString("Price") %><br>
            介紹: <%= ProductQueryResult.getString("Description") %><br>
            庫存: <%= ProductQueryResult.getString("Stock") %><br>

                     <br><a href="buy.jsp?productId=<%= ProductQueryResult.getString("ProductId") %>&amount=1"><input class="" type="button" value="購買"></a>
   </div>
    
</div>

<% } %>
</div>



   


    
  













 


</body>





</html>