package com.shoppingmall.dto;

import java.util.Date;

public class Product_OutDto {
    
    private int out_No;     
    private int out_Amount;   
    private Date out_Date;    
    private int p_No;         
    private int o_No;          

    public Product_OutDto() {
    }

	public Product_OutDto(int out_No, int out_Amount, Date out_Date, int p_No, int o_No) {
		super();
		this.out_No = out_No;
		this.out_Amount = out_Amount;
		this.out_Date = out_Date;
		this.p_No = p_No;
		this.o_No = o_No;
	}

	public int getOut_No() {
		return out_No;
	}

	public void setOut_No(int out_No) {
		this.out_No = out_No;
	}

	public int getOut_Amount() {
		return out_Amount;
	}

	public void setOut_Amount(int out_Amount) {
		this.out_Amount = out_Amount;
	}

	public Date getOut_Date() {
		return out_Date;
	}

	public void setOut_Date(Date out_Date) {
		this.out_Date = out_Date;
	}

	public int getP_No() {
		return p_No;
	}

	public void setP_No(int p_No) {
		this.p_No = p_No;
	}

	public int getO_No() {
		return o_No;
	}

	public void setO_No(int o_No) {
		this.o_No = o_No;
	}

   
}
