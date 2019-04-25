package com.webproject.model;
public class ProductInfo {

    private Integer masp;
    private String tensp;
    private Integer dongia;

    public ProductInfo() {
    }

    public ProductInfo(SanPham product) {
        this.masp = product.getmasp();
        this.tensp = product.gettensp();
        this.dongia = product.getdongia();

    }

    // Sử dụng trong JPA/Hibernate query
    public ProductInfo(Integer masp, String tensp, Integer dongia) {
        this.masp = masp;
        this.tensp = tensp;
        this.dongia = dongia;
    }

    public Integer getMasp() {
        return masp;
    }

    public void setMasp(Integer masp) {
        this.masp = masp;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public Integer getDongia() {
        return dongia;
    }

    public void setDongia(Integer dongia) {
        this.dongia = dongia;
    }
}
