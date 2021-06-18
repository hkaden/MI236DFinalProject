<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%
request.setCharacterEncoding("UTF-8");
if(!request.getParameter("id").equals("") ){
            
            PreparedStatement ProductDeleteQuery = null;
	        ProductDeleteQuery=con.prepareStatement("UPDATE product SET ClassId = ?, ProductName = ?, Detail = ?, Price = ?, Stock = ?, Url = ?, Description = ?, Size = ? WHERE ProductId = ?");
          ProductDeleteQuery.setString(1, request.getParameter("class"));
            ProductDeleteQuery.setString(2, request.getParameter("name"));
            ProductDeleteQuery.setString(3, request.getParameter("detail"));
            ProductDeleteQuery.setString(4, request.getParameter("price"));
            ProductDeleteQuery.setString(5, request.getParameter("stock"));
            ProductDeleteQuery.setString(6, request.getParameter("url"));
            ProductDeleteQuery.setString(7, request.getParameter("description"));
            ProductDeleteQuery.setString(8, request.getParameter("size"));
            ProductDeleteQuery.setString(9, request.getParameter("id"));
            ProductDeleteQuery.execute();
              out.println("<script type=\"text/javascript\">");
   out.println("alert('更新成功!!');");
   out.println("location='../productlist.jsp';");
   out.println("</script>");
    
} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('參數不得留空!!');");
   out.println("location='../productlist.jsp';");
   out.println("</script>");
}

%>