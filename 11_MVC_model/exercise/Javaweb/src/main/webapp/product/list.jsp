<%--
  Created by IntelliJ IDEA.
  User: vannn
  Date: 13-Jan-24
  Time: 2:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan ly san pham</title>
    <link rel="stylesheet" href="/static/css/styles.css">
    <style>
        a{
            text-decoration: none;
            border: 2px solid green;
            color: #00a6fb;
            width: 40px;
            height: 20px;
            border-radius: 999px;
            /*padding: 4px;*/
            /*margin: 4px;*/
        }
    </style>
</head>
<body>
<main class="main-table">
    <button onclick="window.location.href='/product/create.jsp'">New Add</button>
<table class="table">
    <thead>
    <th>ID</th>
    <th>Name</th>
    <th>Date</th>
    <th>Price</th>
    <th>Image</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
    <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.date}</td>
        <td>${product.price}</td>
        <td>${product.about}</td>
        <td>
            <button onclick="window.location.href='?action=update&code=${product.id}'">Update</button>
            <button onclick="window.location.href='?action=delete&code=${product.id}'">Delete</button>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</main>
</body>
</html>
