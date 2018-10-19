<%-- 
    Document   : note
    Created on : Oct 19, 2018, 3:38:27 PM
    Author     : 766375
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notes</title>
    </head>
    <body>
        <h1>Notes!</h1>
        <table>
            <tr>
                <th>Note ID</th>
                <th>Date Created</th>
                <th>Contents</th>
            </tr>
            <c:forEach var="note" notes="${notes}">
                <tr>
                    <td>note.noteId</td>
                    <td>note.dateCreated</td>
                    <td>note.content</td>
                    <td><button></button></td>
                    <td><button></button></td>
                </tr>
            </c:forEach>
        </table>
        
        <h1>Add Note</h1>
        <form action="" method="POST">
            <textarea rows="5" columns="50">
                
            </textarea>
            <input type="submit" value="add">
        </form>
    </body>
</html>
