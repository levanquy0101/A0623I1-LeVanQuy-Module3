<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ứng dụng máy tính</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1><%= "Simple Calculator" %>
</h1>
<br/>
<main id="main">
<form action="/CalculatorServlet" method="post" class="form">
    <label for="">First operand</label>
    <input type="number" name="first-number" class="input"><br>
    <lable>Operator</lable>
    <select name="select-Operator" id="" class="input">
        <option value="+">Cộng</option>
        <option value="-">Trừ</option>
        <option value="*">Nhân</option>
        <option value="/">Chia</option>
    </select><br>
    <lable>Second operand</lable>
    <input type="number" name="second-number" class="input"><br>
    <button type="submit" class="submit">Calculate</button>
</form>
</main>
</body>
</html>