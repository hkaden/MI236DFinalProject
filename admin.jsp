<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
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
    <div class="link-top3"></div>
    
    <div class="container">
      <div class="btnItem">
        <a href="productlist.jsp"><button>商品編輯</button></a>
        </div>
        <div class="btnItem">
        <a href="productadd.jsp"><button>新增商品</button></a>
        </div>
              <div class="btnItem">
        <a href="orderlist.jsp"><button>查看訂單</button></a>
        </div>
              <div class="btnItem">
        <a href="messagelist.jsp"><button>查看留言</button></a>
        </div>

                      <div class="btnItem">
        <a href="productreviewlist.jsp"><button>查看訂單評價</button></a>
        </div>
    </div>

</body>

<div class="ww" style="width:300px; height: 100px;  vertical-align: middle;">
  
    <p>Copyright 2021 © All rights reserved.</p>
  
  </div>
</html>