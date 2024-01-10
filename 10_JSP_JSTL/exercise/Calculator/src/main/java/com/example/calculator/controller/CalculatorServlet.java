package com.example.calculator.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Float result = 0f;
        String errorMessage = "";

        try {
            Float firstNumber = Float.valueOf(request.getParameter("first-number"));
            String selectOperator = request.getParameter("select-Operator");
            Float secondNumber = Float.valueOf(request.getParameter("second-number"));

            result = Calculator.calM(firstNumber, selectOperator, secondNumber);

        } catch (NumberFormatException e) {
            errorMessage = "Dữ liệu đầu vào không hợp lệ";

        } catch (Exception e) {
            errorMessage = "Có lỗi xảy ra: " + e.getMessage();
        }
//        PrintWriter writer = response.getWriter();
        if(!errorMessage.equals("")) {
            request.setAttribute("resultCal",errorMessage);
            request.getRequestDispatcher("calculator/result.jsp").forward(request, response);
        } else {
            request.setAttribute("resultCal",result);
            request.getRequestDispatcher("calculator/result.jsp").forward(request, response);
    }
}
}