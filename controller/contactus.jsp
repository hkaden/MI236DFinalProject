<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%
request.setCharacterEncoding("UTF-8");
if(!request.getParameter("name").equals("") && !request.getParameter("email").equals("") && !request.getParameter("message").equals("") ){
            
            PreparedStatement ProductDeleteQuery = null;
	        ProductDeleteQuery=con.prepareStatement("INSERT INTO message (name, email, message) VALUES (?,?,?)");
          ProductDeleteQuery.setString(1, request.getParameter("name"));
            ProductDeleteQuery.setString(2, request.getParameter("email"));
            ProductDeleteQuery.setString(3, request.getParameter("message"));

            ProductDeleteQuery.execute();
              out.println("<script type=\"text/javascript\">");
   out.println("alert('留言成功!!');");
   out.println("location='../contactus.jsp';");
   out.println("</script>");
    
} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('資料不得留空!!');");
   out.println("location='../contactus.jsp';");
   out.println("</script>");
}

%>