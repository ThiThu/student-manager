<%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 03/04/2019
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create student</title>
</head>

<body>
<h1>Create new student</h1>
<p>
    <a href="/student">Back to student list</a>
</p>
<form:form method="post" action="/create" modelAttribute="nganchan">
    <fieldset>
    <legend>Student information</legend>
    <table>
    <tr>
    <td><form:label path="id"></form:label>ID: </td>
    <td><form:input path="id"></form:input></td>
    </tr>
    <tr>
    <td><form:label path="name"></form:label>Name: </td>
    <td><form:input path="name"></form:input></td>
    </tr>
    <tr>
    <td><form:label path="age"></form:label>Age: </td>
    <td><form:input path="age"></form:input></td>
    </tr>
    <tr>
    <td><form:label path="address"></form:label>Address: </td>
    <td><form:input path="address"></form:input></td>
    </tr>
    <tr>
    <td><form:label path="sex"></form:label>Sex: </td>
    <td><form:input path="sex"></form:input></td>
    </tr>
        <tr>
    <td><form:label path="classroom"></form:label>Classroom: </td>
    <td><form:input path="classroom"></form:input></td>
        </tr>
    <tr>
    <td><input type="submit" value="Create student"></td>
    </tr>
    </table>
    </fieldset>
     </form:form>
    </body>
    </html>