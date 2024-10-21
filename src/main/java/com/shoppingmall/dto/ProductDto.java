package com.shoppingmall.dto;

public class ProductDto {
    private int p_no;
    private String p_name;
    private int p_price;
    private int p_discount;
    private String p_category;
    private String p_img;
    private int p_stock;

    public ProductDto() {}

    public ProductDto(int p_no, String p_name, int p_price, int p_discount, String p_category, String p_img, int p_stock) {
        this.p_no = p_no;
        this.p_name = p_name;
        this.p_price = p_price;
        this.p_discount = p_discount;
        this.p_category = p_category;
        this.p_img = p_img;
        this.p_stock = p_stock;
    }

    public int getP_no() {
        return p_no;
    }

    public void setP_no(int p_no) {
        this.p_no = p_no;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public int getP_price() {
        return p_price;
    }

    public void setP_price(int p_price) {
        this.p_price = p_price;
    }

    public int getP_discount() {
        return p_discount;
    }

    public void setP_discount(int p_discount) {
        this.p_discount = p_discount;
    }

    public String getP_category() {
        return p_category;
    }

    public void setP_category(String p_category) {
        this.p_category = p_category;
    }

    public String getP_img() {
        return p_img;
    }

    public void setP_img(String p_img) {
        this.p_img = p_img;
    }

    public int getP_stock() {
        return p_stock;
    }

    public void setP_stock(int p_stock) {
        this.p_stock = p_stock;
    }
}
