package com.shoppingmall.dto;

import java.util.Date;

public class Product_InDto {
    
    private int in_No;         
    private int in_Amount;    
    private Date in_Date;      
    private int p_No;          
    
    public Product_InDto() {}

    public Product_InDto(int in_No, int in_Amount, Date in_Date, int p_No) {
        this.in_No = in_No;
        this.in_Amount = in_Amount;
        this.in_Date = in_Date;
        this.p_No = p_No;
    }

	public int getIn_No() {
		return in_No;
	}

	public void setIn_No(int in_No) {
		this.in_No = in_No;
	}

	public int getIn_Amount() {
		return in_Amount;
	}

	public void setIn_Amount(int in_Amount) {
		this.in_Amount = in_Amount;
	}

	public Date getIn_Date() {
		return in_Date;
	}

	public void setIn_Date(Date in_Date) {
		this.in_Date = in_Date;
	}

	public int getP_No() {
		return p_No;
	}

	public void setP_No(int p_No) {
		this.p_No = p_No;
	}



}
