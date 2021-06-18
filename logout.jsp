<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
session.removeAttribute("email");
              out.println("<script type=\"text/javascript\">");
            out.println("alert('登出成功!!');");
            out.println("location='./index.jsp';");
            out.println("</script>");

%>