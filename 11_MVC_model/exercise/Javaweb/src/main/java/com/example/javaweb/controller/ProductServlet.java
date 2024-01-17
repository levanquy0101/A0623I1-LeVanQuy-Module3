package com.example.javaweb.controller;
import com.example.javaweb.model.Product;
import com.example.javaweb.services.ImlProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    private final ImlProductService imlProductService = new ImlProductService();
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
                Product product = imlProductService.findById(id);
                request.setAttribute("product", product);
                request.getRequestDispatcher("product/update.jsp").forward(request, response);
                break;
            case "delete":
                Integer idDelete = Integer.valueOf(request.getParameter("id"));
                Product productDelete = imlProductService.findById(idDelete);
                request.setAttribute("product", productDelete);
                request.getRequestDispatcher("product/delete.jsp").forward(request, response);
                break;
            case "search":
                String message = "Không tìm thấy sản phẩm";
                String findName = request.getParameter("name");
                if(!findName.isEmpty()){
                List<Product> productFindNameList = imlProductService.findName(findName);
                if(productFindNameList.size()>0){
                request.setAttribute("productList",productFindNameList);
                request.getRequestDispatcher("/product/list.jsp").forward(request,response);
                }else {
                    request.setAttribute("message",message);
                    request.getRequestDispatcher("/product/list.jsp").forward(request,response);
                }
                }
                else {
                    response.sendRedirect("/product/searchByName.jsp");
                }
                break;
            default:
              List<Product> productList = imlProductService.findAll();
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
                imlProductService.save(productNew);
                response.sendRedirect("/ProductServlet");
                break;
            case "update":
                Integer idUpdate = Integer.valueOf(request.getParameter("id"));
                String nameUpdate = request.getParameter("name");
                String dateUpdate = request.getParameter("date");
                Double priceUpdate = Double.valueOf(request.getParameter("price"));
                String aboutUpdate = request.getParameter("about");
                Product productUpdate = new Product(idUpdate,nameUpdate,dateUpdate,priceUpdate,aboutUpdate);
                imlProductService.save(productUpdate);
                response.sendRedirect("/ProductServlet");
                break;
            case "delete":
                Integer idDelete = Integer.valueOf(request.getParameter("id"));
                imlProductService.remove(idDelete);
                response.sendRedirect("/ProductServlet");
        }
    }
}
