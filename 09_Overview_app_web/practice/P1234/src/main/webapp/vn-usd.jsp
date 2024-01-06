<%--
  Created by IntelliJ IDEA.
  User: vannn
  Date: 07-Jan-24
  Time: 5:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ứng dụng chuyển đổi tiền tệ</title>
</head>
<body>
<h2>Ứng dụng chuyển đổi tiền tệ</h2>
<form action="/money" method="get">
<label>Tiền Việt Nam</label><br>
<input type="number" name="vn-m"><br>
<label>Tiền Mỹ</label><br>
<input type="number" name="usd-m"><br>
<input type="submit" value="Chuyển đổi">
</form>
</body>
</html>
