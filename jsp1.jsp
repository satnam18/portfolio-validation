

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>authentication</title>
    </head>
    <body>
        <%
         try
{
        Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            PreparedStatement pt =con.prepareStatement("select username  from project where username=?");
               String a= request.getParameter("user");
            String b=request.getParameter("pass");
             pt.setString(1,a);
         //   pt.setString(2,b);
         //   pt.executeUpdate();
             ResultSet rs =pt.executeQuery("select * from project");

             int flag=0;
            if(a.equals("admin") && b.equals("admin"))
            {
                response.sendRedirect("admin.jsp");
            }
            while(rs.next())
            {
                if(rs.getString("username").equals(request.getParameter("user")))
                {
                    flag=1;
                    if(rs.getString("password").equals(request.getParameter("pass")))
                    {
                        flag=2;
                    }
                }
            }
            
            if(flag==0)
            {
                response.sendRedirect("register.html");
            }
            if(flag==1)
            {
                response.sendRedirect("pass.html");

            }
            if(flag==2)
            {
                response.sendRedirect("success.html");

            }
            
           // out.println("<h1>updated</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
    
         %>
    </body>
</html>
