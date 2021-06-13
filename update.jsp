
<%@ page import = "java.sql.*, java.util.* "%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<html lang="en">
  
  <head>
  <title>update</title>
  </head>

  

<body >
 
	<%
	try {
		if(con.isClosed())
           out.println("連線建立失敗");
        else {
		con.createStatement().execute(sql);
		request.setCharacterEncoding("UTF-8");
        String new_id=request.getParameter("id");
		String new_name=request.getParameter("name");
		String new_description=request.getParameter("detail");
		String new_size=request.getParameter("size");
		String new_price=request.getParameter("price");
		String new_stock=request.getParameter("stock");
		String new_classid=new_id.substring(0,1);
		new_id=new_id.substring(2);
		
		
		sql="UPDATE `product` SET `ProductName`='"+new_name+"',";
		sql+="`Detail`='"+new_description+"',";
		sql+="`Size`='"+new_size+"',";
		sql+="`Price`='"+new_price+"',";
		sql+="`Stock`='"+new_stock+"'";
        sql+="WHERE `ClassId`='"+new_classid+"'"+ "AND `ProductId`='"+new_id+"'"; 
		  
		con.createStatement().execute(sql);
		con.close();  
        
		response.sendRedirect("administrator.jsp");
		}
	}
    catch (SQLException sExec) {
          out.println("SQL錯誤"+sExec.toString());
    }
	%>
</body>
  
</html>