<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%

if(!request.getParameter("orderId").equals("") && !request.getParameter("score").equals("") && !request.getParameter("comment").equals("")){
        PreparedStatement pstmt = null;
        PreparedStatement passwordChanger = null;
        try {
          pstmt=con.prepareStatement("INSERT INTO review (OrderId, Score, Comment) VALUES (?,?,?)");
          pstmt.setString(1,request.getParameter("orderId"));
          pstmt.setString(2,request.getParameter("score"));
          pstmt.setString(3,request.getParameter("comment"));
          //pstmt.setString(5,request.getParameter("password"));
          pstmt.execute();

          out.println("<script type=\"text/javascript\">");
          out.println("alert('訂單已完成!');");
          out.println("location='../user.jsp';");
          out.println("</script>");
        }
          catch(SQLException e) {
            out.println("SQL錯誤"+e.toString());
        }


} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('基本資料不得留空!!');");
   out.println("location='../user.jsp';");
   out.println("</script>");
}

%>