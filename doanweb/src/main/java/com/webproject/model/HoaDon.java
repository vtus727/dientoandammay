package com.webproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;


@Entity
@Table(name="hoadon")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer mahd;

    @Column(name="makh")
    private Integer makh;

    @Column(name="manv")
    private Integer manv;

    @Column(name="ngaylaphd")
    private Date ngaylaphd;

    @Column(name="ngaynhanhang")
    private Date ngaynhanhang;
    public Integer getMahd() {
        return mahd;
    }

    public void setMahd(Integer mahd) {
        this.mahd = mahd;
    }

    public Integer getMakh() {
        return makh;
    }

    public void setMakh(Integer makh) {
        this.makh = makh;
    }

    public Integer getManv() {
        return manv;
    }

    public void setManv(Integer manv) {
        this.manv = manv;
    }

    public Date getNgaylaphd() {
        return ngaylaphd;
    }

    public void setNgaylaphd(Date ngaylaphd) {
        this.ngaylaphd = ngaylaphd;
    }

    public Date getNgaynhanhang() {
        return ngaynhanhang;
    }

    public void setNgaynhanhang(Date ngaynhanhang) {
        this.ngaynhanhang = ngaynhanhang;
    }




}
