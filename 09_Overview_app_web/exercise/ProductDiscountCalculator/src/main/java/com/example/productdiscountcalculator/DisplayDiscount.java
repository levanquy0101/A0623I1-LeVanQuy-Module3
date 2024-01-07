package com.example.productdiscountcalculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "display-discount", value = "/display-discount")
public class DisplayDiscount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String describe = request.getParameter("describe");
        Float price = Float.valueOf(request.getParameter("price"));
        Float discount_rate = Float.valueOf(request.getParameter("discount_rate"));
        Float discountAmount = (float) (price * discount_rate * 0.01);
        Float discountPrice = price - discountAmount;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>"+"Mo ta san pham: "+ describe +"</h1>");
        writer.println("<h1>"+"Gia niem yet cua san pham: " + price + "</h1>");
        writer.println("<h1>"+"Ty le chiet khau: " + discount_rate + "</h1>");
        writer.println("<h1>"+"Luong chiet khau: " + discountAmount + "</h1>");
        writer.println("<h1>"+"Gia sau khi chiet khau: " + discountPrice + "</h1>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
