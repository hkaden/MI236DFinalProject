<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%

if(!request.getParameter("id").equals("") ){
            PreparedStatement ProductDeleteQuery = null;
	        ProductDeleteQuery=con.prepareStatement("UPDATE `order` SET Payment = 1 WHERE OrderId = ?");
            ProductDeleteQuery.setString(1, request.getParameter("id"));
            ProductDeleteQuery.execute();
              out.println("<script type=\"text/javascript\">");
   out.println("alert('成功修改!!');");
   out.println("location='../orderlist.jsp';");
   out.println("</script>");
    
} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('參數不得留空!!');");
   out.println("location='../orderlist.jsp';");
   out.println("</script>");
}

%>