<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%

if(!request.getParameter("id").equals("") ){
            PreparedStatement ProductDeleteQuery = null;
	        ProductDeleteQuery=con.prepareStatement("DELETE FROM message WHERE id = ?");
            ProductDeleteQuery.setString(1, request.getParameter("id"));
            ProductDeleteQuery.execute();
              out.println("<script type=\"text/javascript\">");
   out.println("alert('成功刪除!!');");
   out.println("location='../messagelist.jsp';");
   out.println("</script>");
    
} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('參數不得留空!!');");
   out.println("location='../messagelist.jsp';");
   out.println("</script>");
}

%>