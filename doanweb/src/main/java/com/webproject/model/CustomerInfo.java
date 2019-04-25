package com.webproject.model;

import com.webproject.form.CustomerForm;

public class CustomerInfo {

    private Integer makh;
    private String tenkh;
    private String sodienthoai;
    private String diachi;

    private boolean valid;
    public CustomerInfo() {
    }

    public CustomerInfo(CustomerForm customerForm) {
        this.makh = customerForm.getmakh();
        this.tenkh = customerForm.gettenkh();
        this.sodienthoai = customerForm.getsodienthoai();
        this.diachi = customerForm.getdiachi();
    }

    public CustomerInfo(Integer makh, String tenkh, String sodienthoai, String diachi) {
        this.makh = makh;
        this.tenkh = tenkh;
        this.sodienthoai = sodienthoai;
        this.diachi = diachi;
    }

    public Integer getMakh() {
        return makh;
    }

    public void setMakh(Integer makh) {
        this.makh = makh;
    }

    public String getTenkh() {
        return tenkh;
    }

    public void setTenkh(String tenkh) {
        this.tenkh = tenkh;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
}
