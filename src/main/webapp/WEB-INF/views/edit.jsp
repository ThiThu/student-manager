<%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 03/04/2019
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 12/03/2019
  Time: 11:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit student</title>
</head>
<body>
<h1>Edit student</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/student">Back to student list</a>
</p>
<form:form method="post" action="/edit" modelAttribute="student">
    <fieldset>
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
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </fieldset>
</form:form>
</body>
</html>