package com.example.javaweb.controller;
import com.example.javaweb.model.Product;
import com.example.javaweb.services.ImlProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    private final ImlProductServices imlProductServices = new ImlProductServices();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/student/create.jsp").forward(request, response);
                break;
            case "update":
                Integer code = Integer.valueOf(request.getParameter("code"));
                Product product = imlProductServices.findById(code);
                request.setAttribute("product", product);
                request.getRequestDispatcher("product/update.jsp").forward(request, response);
                break;
            default:
              List<Product> productList = imlProductServices.findAll();
              request.setAttribute("productList",productList);
              request.getRequestDispatcher("/product/list.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
