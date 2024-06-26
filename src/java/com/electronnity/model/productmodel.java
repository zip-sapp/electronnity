/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.model;

import java.math.BigDecimal;

public class productmodel {
    private String productid;
    private String productname;
    private String description;
    private String size;
    private BigDecimal price;
    private int quantity;

    public productmodel() {
    }

    public productmodel(String productid, String productName, String description, String size, BigDecimal price, int quantity) {
        this.productid = productid;
        this.productname = productname;
        this.description = description;
        this.size = size;
        this.price = price;
        this.quantity = quantity;
    }

    public String getProductId() {
        return productid;
    }

    public void setProductId(String productid) {
        this.productid = productid;
    }

    public String getProductName() {
        return productname;
    }

    public void setProductName(String productname) {
        this.productname = productname;
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