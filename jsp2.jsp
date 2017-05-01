

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>password change</title>
    </head>
    <body>
        <%
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
               PreparedStatement pt=con.prepareStatement("update project set password=? where username=?");
               String a=request.getParameter("user");
               String b=request.getParameter("pass");
               pt.setString(1, b);
               pt.setString(2, a);
               pt.executeUpdate();
               
              response.sendRedirect("index.html");

            }
            catch(Exception e)
                    {
                     out.println(e);   
                    }
            %>
            
    </body>
</html>
