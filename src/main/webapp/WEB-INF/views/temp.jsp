<%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 03/04/2019
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Students Data</h1>
<form:form action="student" method="post">
    <table>
        <tr>
            <td><form:label path="Id">Student ID:</form:label></td>
            <td><form:input path="Id" value="${Student.getID}" />       </td>
        </tr>
        <tr>
            <td>Name</td>
            <td><form:input path="Name" value="${Student.getName}"/></td>
        </tr>
        <tr>
            <td>Age</td>
            <td><form:input path="Age" value="${Student.getAge}" /></td>
        </tr>

        <tr>
            <td>Address</td>
            <td><form:input path="Address" value="${Student.getAddress}" /></td>
        </tr>
        <tr>
            <td>Sex</td>
            <td><form:input path="Sex" value="${Student.getSex}" /></td>
        </tr>
        <tr>
            <td>Classroom</td>
            <td><form:input path="Classroom" value="${Student.getClassroom}" /></td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="action" value="Add" />
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
