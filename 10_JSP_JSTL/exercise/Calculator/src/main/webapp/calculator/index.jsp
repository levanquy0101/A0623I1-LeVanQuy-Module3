<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ứng dụng máy tính</title>
</head>
<body>
<h1><%= "Simple Calculator" %>
</h1>
<br/>
<form action="/CalculatorServlet" method="post">
    <label for="">First operand</label>
    <input type="number" name="first-number"><br>
    <lable>Operator</lable>
    <select name="select-Operator" id="">
        <option value="+">Cộng</option>
        <option value="-">Trừ</option>
        <option value="*">Nhân</option>
        <option value="/">Chia</option>
    </select><br>
    <lable>Second operand</lable>
    <input type="number" name="second-number"><br>
    <button type="submit">Calculate</button>
</form>
</body>
</html>