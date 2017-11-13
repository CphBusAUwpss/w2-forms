<%-- 
    Document   : form
    Created on : Nov 8, 2016, 8:48:35 PM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family: Verdana;
            }
            textArea{
                width: 300px;
                height: 200px;
            }
            .bluebox{
                border: 2px solid blue;
                padding: 10px;
                width: 350px;
                height: 600px;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <div class="bluebox">
            <h1>Registration form</h1>
        <form action="Registration" method="POST">
            First Name:
            <input type="text" name="fname"><br>
            Last Name:
            <input type="text" name="lastname"><br>
            Password:
            <input type="password" name="password"><br>
            Are you male or female?<br>
            <input type="radio" name="sex" value="male">Male
            <input type="radio" name="sex" value="female">Female<br>
            Check the languages you know<br>
            <input type="checkbox" name="language" value="html">HTML<br>
            <input type="checkbox" name="language" value="java">Java<br>
            <input type="checkbox" name="language" value="c#">C#<br>
            <input type="checkbox" name="language" value="python">Python<br>
            <input type="checkbox" name="language" value="javascript">Javascript<br>
            In which country were you born<br>
            <select name="country">
                <option value="Denmark" selected>Denmark</option>
                <option value="Namibia">Namibia</option>
                <option value="Pakistan">Pakistan</option>
                <option value="Tibet">Tibet</option>
                <option value="Colombia">Colombia</option>
            </select><br>
            <textarea name="description" placeholder="Descripe your self"></textarea><br>
            <input type="submit" value="submit"><br>
        </form>
        </div>
    </body>
</html>
