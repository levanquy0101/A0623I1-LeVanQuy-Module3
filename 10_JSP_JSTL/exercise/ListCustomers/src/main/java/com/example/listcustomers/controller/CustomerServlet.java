package com.example.listcustomers.controller;

import com.example.listcustomers.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList;
    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer(1,"Mai Văn Hoàn", "1983-08-20", "Hà Nội", "img1.jpg"));
        customerList.add(new Customer(2,"Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "img2.jpg"));
        customerList.add(new Customer(3,"Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "img3.jpg"));
        customerList.add(new Customer(4,"Trần Đăng Khoa", "1983-08-17", "Hà Tây", "img4.jpg"));
        customerList.add(new Customer(5,"Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "img5.jpg"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ListCustomers",customerList);
        request.getRequestDispatcher("customers/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
