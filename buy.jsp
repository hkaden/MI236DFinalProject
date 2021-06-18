<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>購物車</title>
  <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="css/cart.css">
  <link rel="icon" href="image/title1.png" > 
 
</head>


  


<body style="background-color :#E8F5E9; ">

<jsp:include page="./include/header.jsp" />  

    <div class="link-top1"></div>

    <div class="link-top4"></div>
                  <% 
            PreparedStatement ProductQuery = null;
	          ProductQuery=con.prepareStatement("SELECT * FROM product WHERE ProductId = ?");
            ProductQuery.setString(1, request.getParameter("productId"));
            ResultSet ProductQueryResult = ProductQuery.executeQuery();
            if (ProductQueryResult.next()) {

            
            
        %>
<div class="cart-page" >
   <table class="c1" rules=none >
     <tr style=" text-align: center; ">
       <td style="font-size: 28px; " colspan="2">項目</td>
       <td style="font-size: 28px;" colspan="2">數量</td>
       <td style="font-size: 28px;" >金額</td>
     </tr>
     <tr style=" text-align: center; ">
       <td style="width: 150px;">
           <div class="cart-info">
               <img class="pp" src="<%= ProductQueryResult.getString("Url") %>">  </div>
            </td>

               <td style="width: 370px; font-size: 25px;"><a href=""><p><%= ProductQueryResult.getString("ProductName") %></p></a>
               <small style="box-align:center;">NT$<%= ProductQueryResult.getString("Price") %></small></td>
               
      <td colspan="2" ><small><%= request.getParameter("amount") %></small></td>
       <td ><%= Integer.parseInt(ProductQueryResult.getString("Price")) * Integer.parseInt(request.getParameter("amount"))%></td>
       
     
       <td> <button type="button"><img class="p1" src="image/g.png"></button></td>
       </tr>
    </tr>

   </table>
</div>
<div class="t1t">
   <h1 class="h1">收件者資料</h1>
<div class="txt">
<form method="post" action="./controller/buy.jsp">
<input class="txt1" type="hidden" name="productId" value="<%= ProductQueryResult.getString("ProductId") %>"/>
<input class="txt1" type="hidden" name="amount" value="<%= request.getParameter("amount") %>"/>
<input class="txt1" type="hidden" name="stock" value="<%= ProductQueryResult.getString("Stock") %>"/>
<input class="txt1" type="hidden" name="total" value="<%= Integer.parseInt(ProductQueryResult.getString("Price")) * Integer.parseInt(request.getParameter("amount"))%>"/>

姓名:<input class="txt1" type="text" name="name" size="15" />
手機號碼:<input class="txt1" type="text" name="phone" size="25" /></div>
<div class="txtt1">Email:<input class="txt1" type="text" name="Email" size="35"/></div>
<div class="txtt2">住址:<input class="txt1" type="text" name="Address" size="50"/></div>
</div>

<p class="b1">選擇付款方式 </p>
<p class="b2">選擇運送方式</p> 

<div class="button">
  <select class="button1" name="PaymentMethod">
  <option value="">選擇付款方式</option>
  <option value="貨到現金付款">貨到現金付款</option>
  <option value="信用卡付款">信用卡付款</option>
</select>
<select class="button2" name="ShippingMethod">
  <option>選擇運送方式</option>
  <option value="超商取貨">超商取貨</option>
  <option value="宅配">宅配</option>
</select></div>



   <div class="total-price">
         <table>
             <tr>
                 <td>合計</td>
                 <td>$<%= Integer.parseInt(ProductQueryResult.getString("Price")) * Integer.parseInt(request.getParameter("amount"))%></td>
             </tr>
          
         </table>

   </div>

   <button type="submit" class="p2"> 下訂單 </button>


</form>

<% } %>


<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
  <p>Copyright 2021 © All rights reserved.</p>

</div>

</body>


</html>