package com.boot.shopping_mall_web.dto;

public class PayDto {
    private int o_no;
    private String p_name;
    private int c_amount;
    private int c_price;

    public PayDto() {}

    public PayDto(int o_no, String p_name, int c_amount, int c_price) {
        this.o_no = o_no;
        this.p_name = p_name;
        this.c_amount = c_amount;
        this.c_price = c_price;
    }

    public int getO_no() {
        return o_no;
    }

    public void setO_no(int o_no) {
        this.o_no = o_no;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
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

    @Override
    public String toString() {
        return "PayDto{" +
                "o_no=" + o_no +
                ", p_name='" + p_name + '\'' +
                ", c_amount=" + c_amount +
                ", c_price=" + c_price +
                '}';
    }
}