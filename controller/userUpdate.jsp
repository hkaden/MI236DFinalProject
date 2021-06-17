<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%
request.setCharacterEncoding("utf-8");
if(!request.getParameter("name").equals("") && !request.getParameter("brithday").equals("") && !request.getParameter("email").equals("") && !request.getParameter("phone").equals("") ){
        PreparedStatement pstmt = null;
        PreparedStatement passwordChanger = null;
        try {
          sql = "UPDATE member SET MemberName = ?, Birthday = ?, Email = ?, PhoneNumber = ? WHERE Email = ?";
          pstmt=con.prepareStatement(sql);
          pstmt.setString(1,request.getParameter("name"));
          pstmt.setString(2,request.getParameter("brithday"));
          pstmt.setString(3,request.getParameter("email"));
          pstmt.setString(4,request.getParameter("phone"));
          pstmt.setString(5,(String)session.getAttribute("email"));
          //pstmt.setString(5,request.getParameter("password"));
          pstmt.execute();
          if(!request.getParameter("newpassword").equals("")) {
              passwordChanger=con.prepareStatement("UPDATE member SET Password = ? WHERE Email = ?");
              passwordChanger.setString(1,request.getParameter("newpassword"));
              passwordChanger.setString(2,(String)session.getAttribute("email"));
              passwordChanger.execute();
          }
          session.removeAttribute("email");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('資料修改成功! 請重新登陸!');");
          out.println("location='../signin.jsp';");
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