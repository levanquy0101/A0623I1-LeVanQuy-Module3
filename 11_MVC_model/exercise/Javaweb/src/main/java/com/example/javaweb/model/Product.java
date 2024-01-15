package com.example.javaweb.model;


public class Product {
    private int id;
    private String name;
    private String date;
    private double price;
    private String about;

    public Product(int id, String name, String date, double price, String about) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.price = price;
        this.about = about;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
}
