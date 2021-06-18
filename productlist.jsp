
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
    <th>名稱</th>
    <th>說明</th>
    <th>價錢</th>
    <th>庫存</th>
    <th>已售出</th>
    <th>操作</th>
  </tr>


        <% 
            PreparedStatement ProductQuery = null;
	        ProductQuery=con.prepareStatement("SELECT * FROM product ORDER BY ProductId");
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            while(ProductQueryResult.next()){
                
            
        %>

              <tr>
    <td><%= ProductQueryResult.getString("ProductId") %></td>
    <td><%= ProductQueryResult.getString("ProductName") %></td>
    <td><%= ProductQueryResult.getString("Detail") %></td>
    <td><%= ProductQueryResult.getString("Price") %></td>
    <td><%= ProductQueryResult.getString("Stock") %></td>
    <td><%= ProductQueryResult.getString("Saled") %></td>
    <td><a href="./productedit.jsp?id=<%= ProductQueryResult.getString("ProductId") %>">修改</a>&nbsp;<a href="./controller/productdelete.jsp?id=<%= ProductQueryResult.getString("ProductId") %>">刪除</a>&nbsp;<a href="./controller/producthot.jsp?id=<%= ProductQueryResult.getString("ProductId") %>">設為熱賣</a>&nbsp;<a href="./controller/productdelhot.jsp?id=<%= ProductQueryResult.getString("ProductId") %>">取消熱賣</a></td>
        </tr>

        <% } %>
        </table>
    </div>

</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>