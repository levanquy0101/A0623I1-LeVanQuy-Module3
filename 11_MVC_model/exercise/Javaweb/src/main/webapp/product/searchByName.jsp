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
<c:if test="${product.name != null}">
    <p>Sản phẩm có ID là: ${product.id}</p>
</c:if>
</body>
</html>
