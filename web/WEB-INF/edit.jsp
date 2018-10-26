<%-- 
    Document   : edit
    Created on : Oct 26, 2018, 1:07:26 PM
    Author     : 766375
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="note?save" method="POST">
            <textarea rows="5" columns="50">
                ${note.content}
            </textarea>
            <input type="submit" value="add">
        </form>
    </body>
</html>
