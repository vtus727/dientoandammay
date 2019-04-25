package com.webproject.form;

import com.webproject.model.CustomerInfo;

public class CustomerForm {

    private Integer makh;
    private String tenkh;
    private String sodienthoai;
    private String diachi;

    private boolean valid;

    public CustomerForm() {

    }

    public CustomerForm(CustomerInfo customerInfo) {
        if (customerInfo != null) {
            this.makh = customerInfo.getMakh();
            this.tenkh = customerInfo.getTenkh();
            this.sodienthoai = customerInfo.getSodienthoai();
            this.diachi = customerInfo.getDiachi();
        }
    }


    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }


    public Integer getmakh() {
        return makh;
    }

    public void setmakh(Integer makh) {
        this.makh = makh;
    }

    public String gettenkh() {
        return tenkh;
    }

    public void settenkh(String tenkh) {
        this.tenkh = tenkh;
    }

    public String getsodienthoai() {
        return sodienthoai;
    }

    public void setsodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public String getdiachi() {
        return diachi;
    }

    public void setdiachi(String diachi) {
        this.diachi = diachi;
    }


}
