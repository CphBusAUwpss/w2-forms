<%-- 
    Document   : uploadimage
    Created on : Nov 8, 2016, 9:42:41 PM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload image</title>
        <style>
            body{
                font-family: Verdana;
            }
        </style>
    </head>
    <body>
        <h1>Upload an image</h1>
        <form name="upload" action="UploadImage" method="POST" enctype="multipart/form-data">
            Choose a local image<input type="file" name="file" value="" /><br>
            Add a description <input type="text" name="description"><br>
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>
