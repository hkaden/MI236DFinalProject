
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

    
    <div class="container" style="left: 45%;">
<table style="border:3px #cccccc solid;">
  <tr>
    <th>ID</th>
    <th>訂單ID</th>
    <th>分數</th>
    <th>評價</th>

  </tr>


        <% 
            PreparedStatement ProductQuery = null;
	        ProductQuery=con.prepareStatement("SELECT * FROM `review`");
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            while(ProductQueryResult.next()){
                
            
        %>

              <tr>
    <td><%= ProductQueryResult.getString("ReviewId") %></td>
    <td><%= ProductQueryResult.getString("OrderId") %></td>
    <td><%= ProductQueryResult.getString("Score") %></td>
    <td><%= ProductQueryResult.getString("Comment") %></td>

        </tr>

        <% } %>
        </table>
    </div>

</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>