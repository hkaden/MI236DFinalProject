
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="css/administrator.css">
  <link rel="icon" href="image/title1.png" > 
</head>
<body style="background-color :#E8F5E9; ">

  <jsp:include page="./include/header.jsp" />
    <jsp:include page="./middleware/adminRouteProtect.jsp" />

    
    <div class="container" style="left: 100px;">
<table style="border:3px #cccccc solid;">
  <tr>
    <th>ID</th>
    <th>Email</th>
    <th>姓名</th>
    <th>電話</th>
    <th>產品</th>
    <th>數量</th>
    <th>金額</th>
    <th>付款方式</th>
    <th>寄送方式</th>
    <th>地址</th>
    <th>已付款</th>
    <th>已發貨</th>
  </tr>


        <% 
            PreparedStatement ProductQuery = null;
	        ProductQuery=con.prepareStatement("SELECT * FROM `order` INNER JOIN `product` ON order.ProductId = product.ProductId;");
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            while(ProductQueryResult.next()){
                
            
        %>

              <tr>
    <td><%= ProductQueryResult.getString("OrderId") %></td>
    <td><%= ProductQueryResult.getString("Email") %></td>
    <td><%= ProductQueryResult.getString("Name") %></td>
    <td><%= ProductQueryResult.getString("phone") %></td>
    <td><%= ProductQueryResult.getString("ProductName") %></td>
    <td><%= ProductQueryResult.getString("Quantity") %></td>
    <td><%= ProductQueryResult.getString("Total") %></td>
    <td><%= ProductQueryResult.getString("PaymentMethod") %></td>
    <td><%= ProductQueryResult.getString("ShippingMethod") %></td>
    <td><%= ProductQueryResult.getString("Address") %></td>
    <td><%= ProductQueryResult.getString("Payment") %></td>
    <td><%= ProductQueryResult.getString("Transport") %></td>
    <td><a href="./controller/orderdelete.jsp?id=<%= ProductQueryResult.getString("OrderId") %>">刪除</a>&nbsp;<a href="./controller/ordershiped.jsp?id=<%= ProductQueryResult.getString("OrderId") %>">設定為已發貨</a>&nbsp;<a href="./controller/orderpayed.jsp?id=<%= ProductQueryResult.getString("OrderId") %>">設為已付款</a></td>
        </tr>

        <% } %>
        </table>
    </div>

</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>