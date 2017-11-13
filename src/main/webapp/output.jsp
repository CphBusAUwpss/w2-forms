<%-- 
    Document   : output
    Created on : Nov 13, 2017, 5:30:11 PM
    Author     : tha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Hello <%= request.getParameter("name") %>
        <img src="<% 
             if(request.getParameter("name").equals("Hans")){
             out.print("img/goat1.jpg");
             } else {
             out.print("img/goat2.jpg");
             }
            
             %>" alt=""/>
    </body>
</html>
