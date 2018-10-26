<%-- 
    Document   : note
    Created on : Oct 19, 2018, 3:38:27 PM
    Author     : 766375
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notes</title>
    </head>
    <body>
        <h1>Notes!</h1>
        <c:choose>
            <c:when test="${selectedNote == null}">
                <table>
                    <tr>
                        <th>Note ID</th>
                        <th>Date Created</th>
                        <th>Contents</th>
                    </tr>
                    <c:forEach var="note" items="${notes}" >
                        <form action="note?delete" method="POST" >
                            <tr>
                                <td>${note.noteId}</td>
                                <td>${note.dateCreated}</td>
                                <td>${note.content}</td>
                                <td><button type="submit" name="noteToDelete" value="${note.noteId}">Delete</button></td>
                            </tr>
                        </form>
                        <form action="note?edit" method="GET">
                            <td><button type="submit" name="noteToEdit" value="${note.noteId}">Edit</button></td>
                        </form>
                    </c:forEach>
                </table>
            </c:when>
            <c:when test="">
                <form action="note?save" method="POST" >
                    <input type="hidden" value="${selectedNote.noteId}" >
                    <textarea name="oldNoteBody" rows="5" columns="50">
                        ${selectedNote.contents}
                    </textarea>
                    <input type="submit" value="save">
                </form>
            </c:when>
        </c:choose>
        
        <h1>Add Note</h1>
        <form action="" method="POST">
            <textarea name="newNoteBody" rows="5" columns="50">
                
            </textarea>
            <input type="submit" value="add">
        </form>
    </body>
</html>
