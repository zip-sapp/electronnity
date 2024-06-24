/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.model;

public class productmodel {
    protected int productid;
    protected String productname;
    protected float price;
    protected int quantity;
 
    public productmodel() {
    }
 
    public productmodel(int productid) {
        this.productid = productid;
    }
 
    public productmodel(int productid, String productname, float price, int quantity) {
        this.productid = productid;
        this.productname = productname;
        this.price = price;
        this.quantity = quantity;
    }
     
    public productmodel(String productname, float price, int quantity) {
        this.productname = productname;
        this.price = price;
        this.quantity = quantity;
    }
 
    public int getProductId() {
        return productid;
    }
 
    public void setProductId(int productid) {
        this.productid = productid;
    }
 
    public String getProductName() {
        return productname;
    }
 
    public void setProductName(String productname) {
        this.productname = productname;
    }
 
    public float getPrice() {
        return price;
    }
 
    public void setPrice(float price) {
        this.price = price;
    }
 
    public int getQuantity() {
        return quantity;
    }
 
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}