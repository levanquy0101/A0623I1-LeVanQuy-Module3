<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<h1>Student List</h1>
<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Point</th>
        <th>Result</th>
        <th>Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${studentList}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>
                <c:choose>
                    <c:when test="${student.gender == 1}">Male</c:when>
                    <c:when test="${student.gender == 0}">Female</c:when>
                    <c:otherwise>LGBT</c:otherwise>
                </c:choose>
            </td>
            <td>${student.point}</td>
            <td>
                <c:if test="${student.point >= 60}">Pass</c:if>
                <c:if test="${student.point < 60}">Fail</c:if>
            </td>
            <td>
                <img src="/static/img/${student.image}" width="50px">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>