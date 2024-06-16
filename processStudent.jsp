<%-- 
    Document   : processStudent
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page errorPage="errorStudent.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 3 - Processor</title>
        <style>
            p{
                color: blue;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="myStudent" class="lab6.com.Book" scope="request"/>
        
        <jsp:setProperty name="myStudent" property="*"/>
        
        <h1>Task 3 - Create Records Constrained by Regular Expression in JSP</h1>
        
        <%
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("S1: MySQL driver loaded..!");
            
            String myURL = "jdbc:mysql://localhost/cse3209";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("S2: Database is connected..!");
            
            System.out.println("S3: Prepared Statement created...!");
            
            String sInsertQry = "INSERT INTO Student(stuno, stuname, stuprogram) VALUES (?, ?, ?)";
            System.out.println("\t SQL Query: " +sInsertQry);

PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            System.out.println("S4: Perform insertion of record...!");
            myPS.setString (1, myStudent.getStuno());
            myPS.setString (2, myStudent.getStuname());
            myPS.setString (3, myStudent.getStuprogram());
            
            
            result = myPS.executeUpdate();
            
            if (result > 0){
                out.println("\tRecord succesfully added into Book's table...!");
                out.println("<p>" + "Record with student no " + myStudent.getStuno()
                        + " succesfully created..!" + "</p>");
                out.println("<p>" + "Details of record are; " + "</p>");
                out.println("<p>Student ID : " + myStudent.getStuno() + "</p>");
                out.println("<p>Name : " + myStudent.getStuname() + "</p>");
                out.println("<p>Program : " + myStudent.getStuprogram() + "</p>");
            }
            
            System.out.println("5: Close Database Connection...!");
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed...!");
        %>
    </body>
</htm
