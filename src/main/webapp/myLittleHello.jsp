<%-- 
    Document   : hello
    Created on : Nov 9, 2016, 6:12:32 PM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="domain.Product, java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%= request.getParameter("firstname")%></h1>
        <h2>List of products</h2>
        <% 
            List<Product> products = (List<Product>)request.getAttribute("products");
            for (int i = 0; i < products.size(); i++) {
                    out.println(products.get(i));
                  // out.println("<br/>");
                   %> <br/><%
                }
        %>
    </body>
</html>
