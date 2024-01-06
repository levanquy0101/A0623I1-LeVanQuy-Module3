package com.example.p1234;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "money", value = "/money")
public class Money extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Float vn = Float.valueOf(request.getParameter("vn-m"));
//        Float usd = Float.valueOf(request.getParameter("usd-m"));
        PrintWriter writer = response.getWriter();
        Float result = vn / 24000;
        writer.println("<html>");
        writer.println("<h1>" + "VietNam "+vn+" sang My: " + result + "usd"+"</h1>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
