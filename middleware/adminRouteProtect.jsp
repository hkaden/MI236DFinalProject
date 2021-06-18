<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
    <% 
    PreparedStatement isAdminQuery = null;
	isAdminQuery=con.prepareStatement("SELECT * FROM member WHERE Email = ? AND isAdmin = 1");
    isAdminQuery.setString(1,(String)session.getAttribute("email"));
	ResultSet isAdminQueryResult = isAdminQuery.executeQuery();

    if(!isAdminQueryResult.next()) {
          out.println("<script type=\"text/javascript\">");
          out.println("alert('你不是管理員!');");
          out.println("location='./user.jsp';");
          out.println("</script>");
          return;
    }
    %>