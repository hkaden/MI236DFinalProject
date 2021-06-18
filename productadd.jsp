
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

    
    <div class="container">
            <% 
            PreparedStatement ClassQuery = null;
            ClassQuery=con.prepareStatement("SELECT * FROM class");
            ResultSet ClassQueryResult = ClassQuery.executeQuery();
        %>
        <table style="border:3px #cccccc solid;">
        <form method="post" action="./controller/productadd.jsp">
        <input name="id" type="hidden" value="">
  <tr>
    <td> 產品名稱 :&nbsp;<input type="text" name="name" value=""></td>
</tr>
    <tr><td> 產品說明 :&nbsp;<input type="text" name="detail" value=""></td></tr>
    <tr><td> 產品簡介 :&nbsp;<input type="text" name="description" value=""></td></tr>
    <tr><td> 產品規格 :&nbsp;<input type="text" name="size" value=""></td></tr>
    <tr><td> 產品價錢 :&nbsp;<input type="text" name="price" value=""></td></tr>
    <tr><td> 產品庫存 :&nbsp;<input type="text" name="stock" value=""></td></tr>
    <tr><td> 產品分類 :&nbsp; <select name="class" >
    <% while (ClassQueryResult.next()) { %>
    
        <option value="<%= ClassQueryResult.getString("ClassId") %>"><%= ClassQueryResult.getString("ClassName") %></option>
    <% } %>
</select>

</td></tr>
    <tr><td> 圖片連結 :&nbsp;<input type="text" name="url" value=""></td></tr>
    <tr><td> <button type="submit"> 儲存 </button> </td></tr>
    </form>
  </table>


    </div>
</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>