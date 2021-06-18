<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>

<%

if(!request.getParameter("name").equals("") && !request.getParameter("birthday").equals("") && !request.getParameter("email").equals("") && !request.getParameter("phone").equals("") && !request.getParameter("password").equals("") && !request.getParameter("passwordConfim").equals("")){


    sql = "SELECT * FROM member WHERE PhoneNumber=? OR Email=?";
    PreparedStatement pstmt = null;
	  pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("phone"));
    pstmt.setString(2,request.getParameter("email"));
	  ResultSet paperrs = pstmt.executeQuery();
    if(!paperrs.next()){            
      if(request.getParameter("password").equals(request.getParameter("passwordConfim"))) {
        try {
          sql = "INSERT INTO member (MemberName, Birthday, Email, PhoneNumber, Password) VALUES (?,?,?,?,?)";
          pstmt=con.prepareStatement(sql);
          pstmt.setString(1,request.getParameter("name"));
          pstmt.setString(2,request.getParameter("birthday"));
          pstmt.setString(3,request.getParameter("email"));
          pstmt.setString(4,request.getParameter("phone"));
          pstmt.setString(5,request.getParameter("password"));
          pstmt.execute();
          out.println("<script type=\"text/javascript\">");
          out.println("alert('註冊成功! 請重新登錄');");
          out.println("location='../signin.jsp';");
          out.println("</script>");
        }
          catch(SQLException e) {
            out.println("SQL錯誤"+e.toString());
        }
      } else {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('兩個密碼不相符!');");
        out.println("location='../register.jsp';");
        out.println("</script>");
      }
    } else {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('這個電話號碼/Email已被註冊了!');");
        out.println("location='../register.jsp';");
        out.println("</script>");
    }
} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('請將所有資料填完!');");
   out.println("location='../register.jsp';");
   out.println("</script>");
}

%>