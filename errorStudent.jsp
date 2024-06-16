<%-- 
    Document   : errorStudent
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 3 - Error Student</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="POST">
            <h1>Lab 6 - Task 3 - Perform creating and retrieving records via JSP Page</h1>
            <p>When inserting record..!</p>
            <p><jsp:expression> exception.getMessage() </jsp:expression></p>
            <br>
        </form>
    </body>
</html>
