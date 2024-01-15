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
                request.getRequestDispatcher("/product/create.jsp").forward(request, response);
                break;
            case "update":
                Integer id = Integer.valueOf(request.getParameter("id"));
                Product product = imlProductServices.findById(id);
                request.setAttribute("product", product);
                request.getRequestDispatcher("product/update.jsp").forward(request, response);
                break;
            case "delete":
                Integer idDelete = Integer.valueOf(request.getParameter("id"));
                Product productDelete = imlProductServices.findById(idDelete);
                request.setAttribute("product", productDelete);
                request.getRequestDispatcher("product/delete.jsp").forward(request, response);
                break;
            case "search":
                String findName = request.getParameter("name");
                Product productFindName = imlProductServices.findByName(findName);
                request.setAttribute("product",productFindName);
                request.getRequestDispatcher("/product/searchByName.jsp").forward(request,response);
                break;
            default:
              List<Product> productList = imlProductServices.findAll();
              request.setAttribute("productList",productList);
              request.getRequestDispatcher("/product/list.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String nameAdd = request.getParameter("name");
                String dateAdd = request.getParameter("date");
                Double priceAdd = Double.valueOf(request.getParameter("price"));
                String aboutAdd = request.getParameter("about");
                Product productNew = new Product(0,nameAdd,dateAdd,priceAdd,aboutAdd);
                imlProductServices.save(productNew);
                response.sendRedirect("/ProductServlet");
                break;
            case "update":
                Integer idUpdate = Integer.valueOf(request.getParameter("id"));
                String nameUpdate = request.getParameter("name");
                String dateUpdate = request.getParameter("date");
                Double priceUpdate = Double.valueOf(request.getParameter("price"));
                String aboutUpdate = request.getParameter("about");
                Product productUpdate = new Product(idUpdate,nameUpdate,dateUpdate,priceUpdate,aboutUpdate);
                imlProductServices.save(productUpdate);
                response.sendRedirect("/ProductServlet");
                break;
            case "delete":
                Integer idDelete = Integer.valueOf(request.getParameter("id"));
                imlProductServices.remove(idDelete);
                response.sendRedirect("/ProductServlet");

        }
    }
}
