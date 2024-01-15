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
<form action="/CreateServlet" class="main-form" style="margin: 200px" method="post">
<input type="text"class="input-q1" placeholder="Nhập tên" name="name">
<input type="text"class="input-q1" placeholder="Nhập ngày sản xuất" name="date">
<input type="text"class="input-q1" placeholder="Nhập giá" name="price">
<input type="text"class="input-q1" placeholder="Nhập thông tin sản phẩm" name="about"><br>
<input type="submit" value="Tạo mới dữ liệu" class="submit">
</form>
</body>
</html>
