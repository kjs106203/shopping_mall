package com.boot.shopping_mall_web.dto;

public class CartDto {
    private int p_no;
    private int m_no;
    private String c_name;
    private int c_amount;
    private int c_price;
    private String c_status;

    public CartDto() {}

    public CartDto(int p_no, int m_no, String c_name, int c_amount, int c_price, String c_status) {
        this.p_no = p_no;
        this.m_no = m_no;
        this.c_name = c_name;
        this.c_amount = c_amount;
        this.c_price = c_price;
        this.c_status = c_status;
    }

    public int getP_no() {
        return p_no;
    }

    public void setP_no(int p_no) {
        this.p_no = p_no;
    }

    public int getM_no() {
        return m_no;
    }

    public void setM_no(int m_no) {
        this.m_no = m_no;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public int getC_amount() {
        return c_amount;
    }

    public void setC_amount(int c_amount) {
        this.c_amount = c_amount;
    }

    public int getC_price() {
        return c_price;
    }

    public void setC_price(int c_price) {
        this.c_price = c_price;
    }

    public String getC_status() {
        return c_status;
    }

    public void setC_status(String c_status) {
        this.c_status = c_status;
    }
}
