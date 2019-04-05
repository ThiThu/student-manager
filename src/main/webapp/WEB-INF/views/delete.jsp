<%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 03/04/2019
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete student</title>
</head>
<body>
<h1>Delete student</h1>
<p>
    <a href="/student">Back to student list</a>
</p>
<form:form method="post"  action="/delete" modelAttribute="student"  >
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Student information</legend>
                <table>
                    <tr>
                        <td>ID:</td>
                        <td><form:hidden path="id" value="${student.id}"/></td>
                    </tr>

                    <tr>
                        <td>Name:</td>
                        <td><form:input path="name" value="${student.name}"/></td>
                    </tr>
                    <tr>
                        <td>Age:</td>
                        <td><form:input path="age" value="${student.age}"/></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><form:input path="address" value="${student.address}"/></td>
                    </tr>
                    <tr>
                        <td>Sex:</td>
                        <td><form:input path="sex" value="${student.sex}"/></td>
                    </tr>
                    <tr>
                        <td>Classroom:</td>
                        <td><form:input path="classroom" value="${student.classroom}"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Delete"></td>
                    </tr>
                </table>
            </fieldset>
            </form:form>
</body>
</html>