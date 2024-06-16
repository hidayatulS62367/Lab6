<%-- 
    Document   : processMarathon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="lab6.com.Database"%>
<%@page import="lab6.com.Marathon"%>
<%@page import="lab6.com.MarathonDAO"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p{
                color: red;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="myMarathon" class="lab6.com.Marathon" scope="request"/>
        <jsp:setProperty name="myMarathon" property="*" />

<%
            int result;
            
            result = MarathonDAO.addDetail(myMarathon);
            
            Database myDB = new Database();

            if (result > 0){
                out.println("\tRecord succesfully added into Marathon's table...!");
                out.println("<p>" + "Record with IC No " + myMarathon.getIcNo()
                        + " succesfully created..!" + "</p>");
                out.println("<p>" + "Details of record are; " + "</p>");
                out.println("<p>Ic No    : " + myMarathon.getIcNo() + "</p>");
                out.println("<p>Name     : " + myMarathon.getName() + "</p>");
                out.println("<p>Category : " + myMarathon.getCategory() + " KM </p>");
            } else {
                out.println("insert data failed");
            }
            
            System.out.println("S5: Close database connection...!");
            myDB.closeConnection();
            System.out.println(" ");
            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>
