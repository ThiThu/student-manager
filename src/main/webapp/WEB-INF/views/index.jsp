<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student Management</title>
</head>
<body>
<h1>Students</h1>
<p>
    <a href="/create">Create new student</a>
</p>
<form action="/list" method="post">
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Address</th>
            <th>Sex</th>
            <th>Classroom</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${requestScope['students']}" var="student">
            <tr>
                <td>${student.getId()}</td>
                <td>${student.getName()}</td>
                <td>${student.getAge()}</td>
                <td>${student.getAddress()}</td>
                <td>${student.getSex()}</td>
                <td>${student.getClassroom()}</td>
                <td><a href="/edit?id=${student.getId()}">edit</a></td>
                <td><a href="/delete?id=${student.getId()}">delete</a></td>

            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>