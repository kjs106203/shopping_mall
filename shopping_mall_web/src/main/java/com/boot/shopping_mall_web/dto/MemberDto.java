package com.boot.shopping_mall_web.dto;

public class MemberDto {
    private int m_no;
    private String m_id;
    private String m_pw;
    private String m_name;
    private String m_phone;
    private String m_admin;

    public MemberDto() {}

    public MemberDto(int m_no, String m_id, String m_pw, String m_name, String m_phone, String m_admin) {
        this.m_no = m_no;
        this.m_id = m_id;
        this.m_pw = m_pw;
        this.m_name = m_name;
        this.m_phone = m_phone;
        this.m_admin = m_admin;
    }

    public String getM_admin() {
        return m_admin;
    }

    public void setM_admin(String m_admin) {
        this.m_admin = m_admin;
    }

    public String getM_id() {
        return m_id;
    }

    public void setM_id(String m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public int getM_no() {
        return m_no;
    }

    public void setM_no(int m_no) {
        this.m_no = m_no;
    }

    public String getM_phone() {
        return m_phone;
    }

    public void setM_phone(String m_phone) {
        this.m_phone = m_phone;
    }

    public String getM_pw() {
        return m_pw;
    }

    public void setM_pw(String m_pw) {
        this.m_pw = m_pw;
    }
}
