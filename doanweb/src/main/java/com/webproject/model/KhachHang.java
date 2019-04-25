package com.webproject.model;
import javax.persistence.*;

@Entity
@Table(name="khachhang")
public class KhachHang {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer makh;

    @Column(name="tenkh")
    private String tenkh;

    @Column(name="sodienthoai")
    private String sodienthoai;

    @Column(name="diachi")
    private String diachi;
    public Integer getMakh() {
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
