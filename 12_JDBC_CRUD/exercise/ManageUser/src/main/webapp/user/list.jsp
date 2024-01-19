<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>User Management Application</title>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="/users?action=create">Add New User</a>
  </h2>
</center>
<div align="center">
  <form action="/users" >
    <input type="hidden" name="action" value="search">
    <input type="text" placeholder="Tìm kiếm theo country" name="country">
    <button type="submit">Lọc</button>
  </form>
  <select name="sort" id="" onchange="handleChange(this.value)">
    <option value="">Sắp xếp theo</option>
    <option value="0">Mặc định</option>
    <option value="1">Name A-Z</option>
    <option value="2">Name Z-A</option>

  </select>
  <table border="1" cellpadding="5">
    <caption><h2>List of Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="/users?action=edit&id=${user.id}">Edit</a>
          <a href="/users?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
<script>
  function handleChange(selectedValue) {
    if (selectedValue === "1") {
      window.location.href = '?sort=1';
    } else if (selectedValue === "2") {
      window.location.href = '?sort=2';
    }else {
      window.location.href = '/users';
    }
  }
</script>
</body>
</html>