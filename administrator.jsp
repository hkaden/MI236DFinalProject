<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.* "%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administrator</title>
    <script src="https://kit.fontawesome.com/20b395cd79.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/administrator.css">
   <link rel="icon" href="image/title1.png" > 
  </head>
  
  
    
  
  
  <body style="background-color :#E8F5E9; ">
     <a href="signin.html"><img src="image/user.png" class="user"></a>
      
  
      <a href="cart.html"><img src="image/cart.png" class="car" ></a>
  
      <a href="user1.html"><img src="image/user1.png" class="user1" ></a>
      
      <div class="side-box">
        <div class="search">
            <!--icon-->
            <i class="fas fa-search"></i>
            <input placeholder="Search" type="text" />
        </div>
      </div>
      
   
      <a href="index.html"><img src="image/logo.png" class="title"></a>
  
  
      <ul class="menu">
  
        <li><a href="index.html">首頁</a>
        </li>
        <li><a href="">商品分類▾</a>
          <ul>
            <li><a href="product 1.jsp">後背包</a>
            </li>
            <li><a href="product 2.jsp">側背包</a>
            </li>
            <li><a href="product 3.jsp">腰包</a>
          </ul>
        </li>
        <li><a href="aboutus.html">關於我們</a>
        </li>
        <li><a href="contactus.html">聯絡我們</a>
        
      </ul>
 <link rel="icon" href="image/title1.png" > 

</head>


  


<body style="background-color :#E8F5E9; ">
    <a href="signin.html"><img src="image/user.png" class="user"></a>

    <a href="cart.html"><img src="image/cart.png" class="car" ></a>

    <a href="user1.html"><img src="image/user1.png" class="user1" ></a>
    
    <div class="side-box">
      <div class="search">
          <!--icon-->
          <i class="fas fa-search"></i>
          <input placeholder="Search" type="text" />
      </div>
    </div>
    
 
    <a href="index.html"><img src="image/logo.png" class="title"></a>


    <ul class="menu">

      <li><a href="index.html">首頁</a>
      </li>
      <li><a href="">商品分類▾</a>
        <ul>
          <li><a href="product 1.jsp">後背包</a>
          </li>
          <li><a href="product 2.jsp">側背包</a>
          </li>
          <li><a href="product 3.jsp">腰包</a>
        </ul>
      </li>
      <li><a href="aboutus.html">關於我們</a>
      </li>
      <li><a href="contactus.html">聯絡我們</a>
      
    </ul>
    <div class="link-top1"></div>
    <!--商品編輯-->

    
    <div class="link-top3"></div>
    <div class="t2"><pre>              商品編輯</pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 120px;"><pre>    商品圖   </pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 360px;"><pre>  商品名稱</pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 540px;"><pre>  商品編號</pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 700px;"><pre>  商品資訊</pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 880px;"><pre>  商品規格</pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 1040px;"><pre>       售價      </pre></div>
    <div class="t3" style="position: absolute; top: 335px; left: 1160px;"><pre>       庫存      </pre></div>
	
	<!--商品1-1-->
    <%
		response.sendRedirect("login.html");
		sql="select * from `product` where `ClassId`=1 AND `ProductId`=1";
		ResultSet rs=con.createStatement().executeQuery(sql);
		rs.next();
		//int total=rs.getRow();
		// out.print("")
	%>     
    <form action="update.jsp" method="post">
    <a href="product 1-1.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag1" ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 470px; left: 270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 470px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>  "name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 470px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 470px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 470px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 470px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top: 435px; left: 1210px;" ><button class="signinbtn">    儲存    </button>    </div>
    </form>
	
    <!--商品1-2-->
	<%
		sql="select * from `product` where `ClassId`=1 AND `ProductId`=2" ;
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>
    <form action="update.jsp" method="post">	
    <a href="product 1-2.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag2" ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 700px; left:270px;" value="<%out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 700px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 700px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 700px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 700px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 700px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top: 665px; left: 1210px;" ><button class="signinbtn">    儲存    </button>    </div>
    </form>
    <!--商品1-3-->
	<%
		sql="select * from `product` where `ClassId`=1 AND `ProductId`=3";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>
	<form action="update.jsp" method="post">
    <a href="product 1-3.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag3" ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 940px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 940px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 940px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 940px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 940px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 940px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top: 905px; left: 1210px;" ><button class="signinbtn">    儲存</button>    </div>
    </form>
	
	<!--商品1-4-->
    <%
		sql="select * from `product` where `ClassId`=1 AND `ProductId`=4";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%> 
	<form action="update.jsp" method="post">
    <a href="product 1-4.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag4"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 1175px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 1175px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 1175px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 1175px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 1175px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 1175px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:1140px; left: 1210px;" ><button class="signinbtn"> 儲存 </button> </div>
	</form>
	
	<!--商品2-1-->
	<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=1";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>    
	<form action="update.jsp" method="post">
    <a href="product 2-1.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag5"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 1420px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 1420px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 1420px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 1420px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 1420px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 1420px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top: 1385px; left: 1210px;" ><button class="signinbtn">    儲存    </button>    </div>
	</form>
	
	<!--商品2-2-->
	<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=2";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>
	<form action="update.jsp" method="post">
    <a href="product 2-2.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag6"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 1650px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 1650px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 1650px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 1650px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 1650px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 1650px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:1615px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form> 
	
	<!--商品2-3-->
	<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=3";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>
    <form action="update.jsp" method="post">
    <a href="product 2-3.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag7"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 1900px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 1900px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 1900px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 1900px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 1900px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 1900px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:1865px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form> 
	
	<!--商品2-4-->
	<%
		sql="select * from `product` where `ClassId`=2 AND `ProductId`=4";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>    
	<form action="update.jsp" method="post">
    <a href="product 2-4.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag8"  ></a> 
   <input type="text" class="adbox" style="position: absolute; top: 2130px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 2130px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 2130px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 2130px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 2130px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 2130px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:2095px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form>
	
    <!--商品3-1-->
	<%
		sql="select * from `product` where `ClassId`=3 AND `ProductId`=1";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>    
	<form action="update.jsp" method="post">
    <a href="product 3-1.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag9"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 2370px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 2370px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 2370px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 2370px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 2370px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 2370px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:2335px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form>
	
    <!--商品3-2-->
    <%
		sql="select * from `product` where `ClassId`=3 AND `ProductId`=2";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>    
	<form action="update.jsp" method="post">
	<a href="product 3-2.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag10"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 2610px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 2610px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 2610px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 2610px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 2610px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 2610px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:2575px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form>
	
	
    <!--商品3-3-->
	<%
		sql="select * from `product` where `ClassId`=3 AND `ProductId`=3";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>    
	<form action="update.jsp" method="post">
    <a href="product 3-3.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag11"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 2850px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 2850px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 2850px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 2850px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 2850px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 2850px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:2815px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form>
	
	
    <!--商品3-4-->
	<%
		sql="select * from `product` where `ClassId`=3 AND `ProductId`=4";
		rs=con.createStatement().executeQuery(sql);
		rs.next();
	%>  
	<form action="update.jsp" method="post">	
    <a href="product 3-3.html"><img src="<% out.print(rs.getString(9)); %>" style="border:2px black solid;" class="bag12"  ></a> 
    <input type="text" class="adbox" style="position: absolute; top: 3095px; left:270px;" value="<% out.print(rs.getString(3)); %>" name="name" placeholder="商品名稱">
    <input type="text" class="adbox1" style="position: absolute; top: 3095px; left: 530px;" value="<%=rs.getString(2)+"-"+rs.getString(1)%>" name="id" placeholder="商品編號">
    <input type="text" class="adbox2" style="position: absolute; top: 3095px; left: 660px; " value="<% out.print(rs.getString(4)); %>" name="detail" placeholder="商品資訊">
    <input type="text" class="adbox2" style="position: absolute; top: 3095px; left: 850px; " value="<% out.print(rs.getString(5)); %>" name="size" placeholder="商品規格">
    <input type="text" class="adbox1" style="position: absolute; top: 3095px; left: 1040px;" value="<% out.print(rs.getString(6)); %>" name="price" placeholder="售價">
    <input type="number" class="adbox3" style="position: absolute; top: 3095px; left: 1170px;" value="<% out.print(rs.getString(7)); %>" name="stock" placeholder="庫存">
    <div class="btn" style="position: absolute; top:3060px; left: 1210px;" ><button class="signinbtn">     儲存     </button>     </div>
	</form>

</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>