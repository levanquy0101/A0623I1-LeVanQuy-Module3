<%--
  Created by IntelliJ IDEA.
  User: vannn
  Date: 07-Jan-24
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Ứng dụng Product Discount Calculator</h1>
<form action="display-discount" method="get">
    <label>Mô tả sản phẩm</label><br>
    <textarea name="describe"></textarea><br>
    <label>Giá niêm yết của sản phẩm</label><br>
    <input type="number" name="price"><br>
    <label>Tỷ lệ chiết khấu</label><br>
    <input type="number" name="discount_rate"><br>
    <input type="submit" value="Tính chiết khấu">
</form>
</body>
</html>
