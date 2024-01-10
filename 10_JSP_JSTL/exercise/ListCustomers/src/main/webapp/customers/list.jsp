<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>

<table class="table">
    <h1>Danh sách khách hàng</h1>
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${ListCustomers}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dob}</td>
            <td>${customer.address}</td>
            <td>
                <img src="/static/img/${customer.image}" width="50px">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>