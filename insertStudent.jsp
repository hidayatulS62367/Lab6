<%-- 
    Document   : insertStudent
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 3</title>
    </head> 
    <body>
        <h1>Task 3 - Create Records Constrained by Regular Expression in JSP</h1>
        <form id="StudentReigistration" action="processStudent.jsp" method="POST">
            <fieldset>
                <legend>Student Registration</legend>
                <br>
                <table>
                    <tr>
                        <td><label>Student No</label></td>
                        <td><input name="stuno" type="text" size="30" placeholder="E.g.: UKXXXXXX"></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><input name="stuname" type="text" size="50" placeholder="Enter your name"></td>
                    </tr>
                    <tr>
                        <td><label>Program</label></td>
                        <td>
                            <select name="stuprogram">
                                <option value="Bsc.Soft. Eng">BSc. Soft. Eng.</option>
                                <option value="BSc. with IM">BSc. with IM</option>
                                <option value="BSc. in Networking">BSc. in Networking</option>
                                <option value="BSc. Soft. Robotics">BSc. Soft. Robotics</option>
                            </select>
                        </td>
                    </tr>
<tr>
                        <td>
                            <input type="submit" id="btnSubmit" value="Submit">
                            <input type="reset" id="btnCancel" value="Cancel">
                        </td>
                        <td></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </body>
    <footer><br> &copy;2021-Hidayatul Ain</footer>
</html>
