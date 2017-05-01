<%-- 
    Document   : delete
    Created on : May 6, 2016, 11:48:57 AM
    Author     : priya_jw1v0e1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
            
        Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
             String sql="update project set username=? where username=?";
            PreparedStatement pt=con.prepareStatement(sql);
            String a= request.getParameter("user");
            String b= request.getParameter("nuser");
    
            pt.setString(1, b);
            pt.setString(2, a);
            pt.executeUpdate();
            pt.close();
            con.close();
            out.println("<script>alert(\"Username updated\");"
            +"function redirect(){"
            +"window.location=\"admin.jsp\";}"
            +"setTimeout('redirect()',1);</script>");

        %>


    </body>
</html>
