<%--
  Created by IntelliJ IDEA.
  User: vannn
  Date: 14-Jan-24
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xóa sản phẩm</title>
    <link rel="stylesheet" href="/static/css/styles.css">
</head>
<body>
<form action="/ProductServlet" class="main-form" style="margin: 200px" method="post">
    <input type="hidden" name="action" value="delete">
    <input type="hidden" name="id" value="${product.id}">
<table>
    <thead>
    <th>ID</th>
    <th>Name</th>
    <th>Date</th>
    <th>Price</th>
    <th>About</th>
    </thead>
    <tbody>
    <td>${product.id}</td>
    <td>${product.name}</td>
    <td>${product.date}</td>
    <td>${product.price}</td>
    <td>${product.about}</td>
    </tbody>
</table>
<input type="submit" value="Xóa dữ liệu" class="submit">
    <span>Bạn chắc chắn muốn xóa sản phẩm này?</span>
</form>
</body>
</html>
