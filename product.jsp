<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>日系學生後背包</title>
  <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="css/product 123.css">
  <link rel="icon" href="image/title1.png" > 
  <script type="text/javascript" src="js/product 123.js"></script>

 
</head>


  


<body style="background-color :#E8F5E9; ">
              <% 
            PreparedStatement ProductQuery = null;
	          ProductQuery=con.prepareStatement("SELECT * FROM product WHERE ProductId = ?");
            ProductQuery.setString(1, request.getParameter("id"));
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            if (ProductQueryResult.next()) {

            
            
        %>
<jsp:include page="./include/header.jsp" />  
    <div class="link-top1"></div>
    <img src="<%= ProductQueryResult.getString("Url") %>" style="border:2px black solid;" class="bag1" >

<div class="d1">

<h1 class="t1"><%= ProductQueryResult.getString("ProductName") %></h1>
<h2 class="price" >NT$ <%= ProductQueryResult.getString("Price") %> </h2>

<form method="get" action="buy.jsp">
<input type="hidden" name="productId" value="<%= ProductQueryResult.getString("ProductId") %>">
 <input class="number" name="amount" type="number" value="1"  min="1" max="<%= ProductQueryResult.getString("Stock") %>"/>
 <p class="t">庫存 <%= ProductQueryResult.getString("Stock") %></p>
 <button type="submit" class="btn">購買</button>
</div>
</form>
<div class="link-top2"></div>
 <div class="t2"><pre>           產品資訊</pre></div>

<div class="d2">

<div class="color-lump">
  <p class="tt">商品資訊</p>
  <pre class="tt1">
  <%= ProductQueryResult.getString("Detail") %>
 </pre>

  <p class="ttt">商品規格</p>
  <pre class="ttt1">
<%= ProductQueryResult.getString("Size") %>
    </pre>

</div>
</div>

<% } %>



 


</body>

