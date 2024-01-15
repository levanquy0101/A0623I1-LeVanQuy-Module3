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
    <title>Thêm mới sản phẩm</title>
    <link rel="stylesheet" href="/static/css/styles.css">
</head>
<body>
<form action="/ProductServlet" class="main-form" style="margin: 200px" method="post">
<input type="hidden" name="action" value="update">    
<input type="hidden"class="input-q1" placeholder="Nhập id để sửa" name="id" value="${product.id}">
<h2>Sản phẩm có ID là ${product.id}</h2>
<input type="text"class="input-q1" placeholder="Nhập tên" name="name"  value="${product.name}">
<input type="text"class="input-q1" placeholder="Nhập ngày sản xuất" name="date" value="${product.date}">
<input type="text"class="input-q1" placeholder="Nhập giá" name="price" value="${product.price}">
<input type="text"class="input-q1" placeholder="Nhập thông tin sản phẩm" name="about" value="${product.about}"><br>
<input type="submit" value="Sửa dữ liệu" class="submit">
</form>
</body>
</html>
