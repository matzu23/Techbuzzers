/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techbuzzer.login.model;



public class RegisterModel {
    private String userName;
    private String userID;
    private String accessCode;
    private String product_name;
    private String product_category;
    private String product_brand;
    private int product_stock;
    private int id;
    
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getUserId() {
        return userID;
    }
    public void setUserId(String userID) {
        this.userID = userID;
    }
    public String getAccessCode() {
        return accessCode;
    }
    public void getAccessCode(String accessCode) {
        this.accessCode = accessCode;
    }
    public String getProductName() {
        return product_name;
    }
    public void setProductName(String product_name) {
        this.product_name = product_name;
    }
    public String getProductCategory() {
        return product_category;
    }
    public void setProductCategory(String product_category) {
        this.product_category = product_category;
    }
    public String getProductBrand() {
        return product_brand;
    }
    public void setProductBrand(String accessCode) {
        this.product_brand = product_brand;
    }
    public int getProductStock() {
        return product_stock;
    }
    public void setProductStock(int product_stock) {
        this.product_stock = product_stock;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

}
