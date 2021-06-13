<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.* "%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>側背包</title>
  <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="css/product 2.css">
  <link rel="icon" href="image/title1.png" > 
 
</head>


  


<body style="background-color :#E8F5E9; ">
    <a href="signin.html"><img src="image/user.png" class="user"></a>

    <a href="cart.html"><img src="image/cart.png" class="car" ></a>
    
    <a href="user1.html"><img src="image/user1.png" class="user1" ></a>
    
 
    <a href="index.html"><img src="image/logo.png" class="title"></a>

    <div class="side-box">
        <div class="search">
            <!--icon-->
            <i class="fas fa-search"></i>
            <input placeholder="Search" type="text" />
        </div>
        </div>

    <ul class="menu">

      <li><a href="index.html">首頁</a>
      </li>
      <li><a href="product 2.jsp">側背包▾</a>
        <ul>
          <li><a href="product 3.jsp">腰包</a> </li>
          <li><a href="product 1.jsp">後背包</a></li>
        </ul>
      </li>
      <li><a href="aboutus.html">關於我們</a>
      </li>
      <li><a href="contactus.html">聯絡我們</a>
      
    </ul>

<!--<div class="link-top1"></div>
<img src="image/bag5.jpg" style="border:2px black solid;" class="bag1" >
<div class="link-top2"></div>
<img src="image/bag6.jpg" style="border:2px black solid;" class="bag2" >
<div class="link-top3"></div>
<img src="image/bag7.jpg" style="border:2px black solid;" class="bag3" >
<div class="link-top4"></div>
<img src="image/bag8.jpg" style="border:2px black solid;" class="bag4" >
<div class="link-top5"></div>-->

<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=1";
		ResultSet rs=con.createStatement().executeQuery(sql);
		rs.next();
%>
<img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag1" >
<div class="link-top2"></div>
<div class="t1">
    <a href="product 2-1.html"  style="text-decoration:none;" ><h2 class="a1"><% out.print(rs.getString(3)); %></h2></a> 
    <div class="t-1">
        <pre style="font-size: 20px;" >  
          價格: <%out.print(rs.getString(6));%>
          顏色: <%out.print(rs.getString(10));%>
                     <% 
						String size=rs.getString(5);
						size=size.substring(0,23);
						out.println(size);
						out.print("			"+rs.getString(11));
					 %>
        </pre>
	</div>
</div>

<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=2";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
%>
<img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag2" >
<div class="link-top2"></div>
<div class="t2">
    <a href="product 2-2.html"  style="text-decoration:none;" ><h2 class="a1"><% out.print(rs.getString(3)); %></h2></a> 
    <div class="t-2">
        <pre style="font-size: 20px;" >  
          價格: <%out.print(rs.getString(6));%>
          顏色: <%out.print(rs.getString(10));%>
                     <% 
						size=rs.getString(5);
						size=size.substring(0,23);
						out.println(size);
						out.print("			"+rs.getString(11));
					 %>
        </pre>    
   </div>
</div>

<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=3";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
%>
<img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag3" >
<div class="link-top2"></div>
<div class="t3">
    <a href="product 2-3.html"  style="text-decoration:none;" ><h2 class="a1"><% out.print(rs.getString(3)); %></h2></a> 
    <div class="t-3">
        <pre style="font-size: 20px;" >  
          價格: <%out.print(rs.getString(6));%>
          顏色: <%out.print(rs.getString(10));%>
                     <% 
						size=rs.getString(5);
						size=size.substring(0,23);
						out.println(size);
						out.print("			"+rs.getString(11));
					 %>
        </pre>    
   </div>
</div>

<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=4";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
%>
<img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag4" >
<div class="link-top2"></div>
<div class="t4">
    <a href="product 2-4.html"  style="text-decoration:none;" ><h2 class="a1"><% out.print(rs.getString(3)); %></h2></a> 
    <div class="t-4">
        <pre style="font-size: 20px;" >  
          價格: <%out.print(rs.getString(6));%>
          顏色: <%out.print(rs.getString(10));%>
                     <% 
						size=rs.getString(5);
						size=size.substring(0,23);
						out.println(size);
						out.print("			"+rs.getString(11));
					 %>
        </pre>    
   </div>
</div>

    <a href="cart.html"><input class="button1" type="button" value="加入購物車"></a>
    <a href="cart.html"><input class="button2" type="button" value="加入購物車"></a>
    <a href="cart.html"><input class="button3" type="button" value="加入購物車"></a>
    <a href="cart.html"><input class="button4" type="button" value="加入購物車"></a>

    
  













 


</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
  <p>Copyright 2021 © All rights reserved.</p>

</div>




</html>