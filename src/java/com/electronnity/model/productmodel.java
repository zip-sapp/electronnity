/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.model;

import java.math.BigDecimal;

public class productmodel {
    private int productid;
    private String productName;
    private String description;
    private String size;
    private BigDecimal price;
    private int quantity;

    public productmodel() {
    }

    public productmodel(int productid, String productName, String description, String size, BigDecimal price, int quantity) {
        this.productid = productid;
        this.productName = productName;
        this.description = description;
        this.size = size;
        this.price = price;
        this.quantity = quantity;
    }

    public productmodel(int productid) {
        this(productid, "", "", "", BigDecimal.ZERO, 0);
    }

    public int getProductId() {
        return productid;
    }

    public void setProductId(int productid) {
        this.productid = productid;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}