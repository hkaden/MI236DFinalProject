<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>
<%

  
if(request.getParameter("email") !=null && request.getParameter("password") != null){
      
    sql = "SELECT * FROM member WHERE Email=? AND Password=?";

    PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("email"));
    pstmt.setString(2,request.getParameter("password"));
	
	ResultSet paperrs = pstmt.executeQuery();
    
    if(paperrs.next()){            
        session.setMaxInactiveInterval(30*60);
        session.setAttribute("email",request.getParameter("email"));
        response.sendRedirect("../user.jsp") ;
    }
    else {
          out.println("<script type=\"text/javascript\">");
          out.println("alert('帳號密碼錯誤! 請重新登錄');");
          out.println("location='../signin.jsp';");
          out.println("</script>");
    }
}
%>