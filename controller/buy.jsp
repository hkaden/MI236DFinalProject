<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
request.setCharacterEncoding("UTF-8");
if(!request.getParameter("productId").equals("") ){
            PreparedStatement MemberQuery = null;
            PreparedStatement ProductDeleteQuery = null;
            MemberQuery = con.prepareStatement("SELECT * FROM member WHERE Email=?");
            MemberQuery.setString(1, (String)session.getAttribute("email"));
            ResultSet MemberQueryResult = MemberQuery.executeQuery();
            if(MemberQueryResult.next()) {
                out.println(MemberQueryResult.getString("MemberId"));
	        ProductDeleteQuery=con.prepareStatement("INSERT INTO `order` (Date, Quantity, Total, MemberId, ProductId, PaymentMethod, ShippingMethod, phone, Address, Email) VALUES (?,?,?,?,?,?,?,?,?,?)");
            ProductDeleteQuery.setString(1, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date()));
            ProductDeleteQuery.setString(2, request.getParameter("amount"));
            ProductDeleteQuery.setString(3, request.getParameter("total"));
            ProductDeleteQuery.setString(4, MemberQueryResult.getString("MemberId"));
            ProductDeleteQuery.setString(5, request.getParameter("productId"));
            ProductDeleteQuery.setString(6, request.getParameter("PaymentMethod"));
            ProductDeleteQuery.setString(7, request.getParameter("ShippingMethod"));
            ProductDeleteQuery.setString(8, request.getParameter("phone"));
            ProductDeleteQuery.setString(9, request.getParameter("Address"));
            ProductDeleteQuery.setString(10, request.getParameter("Email"));
            ProductDeleteQuery.execute();
              out.println("<script type=\"text/javascript\">");
            out.println("alert('下單成功!!');");
            out.println("location='../user.jsp';");
            out.println("</script>");
            } else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('請先登入!!');");
   out.println("location='../signin.jsp';");
   out.println("</script>");
            }

    
} else {
  out.println("<script type=\"text/javascript\">");
   out.println("alert('參數不得留空!!');");
   out.println("location='../user.jsp';");
   out.println("</script>");
}

%>