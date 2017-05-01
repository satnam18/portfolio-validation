<%-- 
    Document   : admin
    Created on : May 6, 2016, 10:53:20 AM
    Author     : priya_jw1v0e1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<html>
    <head>
        
<link rel="stylesheet" type="text/css" href="css1.css">      
<title>Admin Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <header class="2">
        <center><h1> Administrator </h1><center>
        
        </header>

    </head>
    <script>
        function fun1()
        {window.location="update.html";
        }
        function fun2()
        {window.location="delete.html";
        }
        function logout()
        {
        alert("Successfully logged out!!");    
        window.location="index.html";
        }
        
        
    </script>
    <body>
<% 
            
        Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
             String sql="select * from project";
            Statement st = con.createStatement();
                ResultSet rs;
                rs=st.executeQuery(sql);
                out.println("<table border=1px ><tr><th>S.no</th><th>Users Registered</th>");
                int count=1;
                while(rs.next()){
                out.println("<tr><td>"+count+"</td><td>"+rs.getString(1)+"</td></tr>");
                count++;
                }
                out.println("</table><center>");
                out.println("<input type=\"button\" onclick=\"fun1()\" value=\"update\">");
                out.println("<input type=\"button\" onclick=\"fun2()\" value=\"delete\"><center>");
                 out.println("<input type=\"button\" onclick=\"logout()\" value=\"Logout\"><center>");

            st.close();
            con.close();    
       
            %>

    
    </body>
</html>
