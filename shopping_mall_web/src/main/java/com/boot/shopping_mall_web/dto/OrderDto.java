package com.shoppingmall.dto;

import java.util.Date;

public class OrderDto {
    private int o_no;
    private int p_no;
    private String o_address;
    private Date o_date;
    private int m_no;

    public OrderDto() {}

    public OrderDto(int o_no, int p_no, String o_address, Date o_date, int m_no) {
        this.o_no = o_no;
        this.p_no = p_no;
        this.o_address = o_address;
        this.o_date = o_date;
        this.m_no = m_no;
    }

    public int getO_no() {
        return o_no;
    }

    public void setO_no(int o_no) {
        this.o_no = o_no;
    }

    public int getP_no() {
        return p_no;
    }

    public void setP_no(int p_no) {
        this.p_no = p_no;
    }

    public String getO_address() {
        return o_address;
    }

    public void setO_address(String o_address) {
        this.o_address = o_address;
    }

    public Date getO_date() {
        return o_date;
    }

    public void setO_date(Date o_date) {
        this.o_date = o_date;
    }

    public int getM_no() {
        return m_no;
    }

    public void setM_no(int m_no) {
        this.m_no = m_no;
    }
}
