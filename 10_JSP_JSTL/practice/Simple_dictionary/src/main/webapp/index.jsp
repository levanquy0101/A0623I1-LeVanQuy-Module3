<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tra từ điển</title>
</head>
<body>
<h1><%= "Ứng dụng từ điển đơn giản!" %>
</h1>
<br/>
<form action="dictionary.jsp" method="post">
    <input type="text" name="search" placeholder="Tra từ">
    <input type="submit" value="Seacrh">
</form>
</body>
</html>