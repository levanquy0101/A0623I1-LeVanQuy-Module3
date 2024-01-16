<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vannn
  Date: 16-Jan-24
  Time: 2:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tìm kiếm sản phầm theo tên</title>
</head>
<body>
<form action="/ProductServlet">
    <input type="hidden" name="action" value="search">
    <input type="text" placeholder="Nhập tên sản phẩm cần tìm: " name="name">
    <button type="submit">Tìm kiếm</button>
</form>
<c:if test="${productListName != null}">
<table class="table">
    <thead>
    <th>ID</th>
    <th>Name</th>
    <th>Date</th>
    <th>Price</th>
    <th>About</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${productListName}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.date}</td>
            <td>${product.price}</td>
            <td>${product.about}</td>
            <td>
                <button onclick="window.location.href='?action=update&id=${product.id}'">Update</button>
                <button onclick="window.location.href='?action=delete&id=${product.id}'">Delete</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</c:if>
    <p>${message}</p>
</table>
</body>
</html>
