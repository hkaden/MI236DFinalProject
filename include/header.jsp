<%@include file="../config.jsp" %>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

    <a href="signin.html"><img src="./image/user.png" class="user"></a>

    <a href="cart.html"><img src="./image/cart.png" class="car" ></a>

    <a href="user1.html"><img src="./image/user1.png" class="user1" ></a>
    
    <div class="side-box">
      <div class="search">
          <!--icon-->
          <i class="fas fa-search"></i>
          <input placeholder="Search" type="text"  />
      </div>
    </div>
 
    <a href="index.jsp"><img src="./image/logo.png" class="title"></a>


    <ul class="menu">

      <li><a href="index.jsp">首頁</a>
      </li>
      <li><a href="#">商品分類▾</a>
        <ul>
          <% 
            PreparedStatement ClassQuery = null;
            ClassQuery=con.prepareStatement("SELECT * FROM class");
            ResultSet ClassQueryResult = ClassQuery.executeQuery();
            while (ClassQueryResult.next()) { 
        %>
          <li><a href="class.jsp?id=<%= ClassQueryResult.getString("ClassId") %>"><%= ClassQueryResult.getString("ClassName") %></a></li>
          <% } %>

        </ul>
      </li>
      <li><a href="aboutus.html">關於我們</a>
      </li>
      <li><a href="contactus.jsp">聯絡我們</a>
      
    </ul>


    <div class="link-top1"></div>