<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ứng dụng chuyển đổi tiền tệ</title>
</head>
<body>
<h1><%= "Currency Converter" %>
</h1>
<br/>
<form action="converter.jsp" method="post">
<lable>Rate:</lable><br>
<input type="number" placeholder="Nhập tỷ giá" value="22000" name="rate"><br>
<lable>USD:</lable><br>
<input type="number" placeholder="USD" name="usd" value="0"><br>
<input type="submit" value="Converter">
</form>
</body>
</html>