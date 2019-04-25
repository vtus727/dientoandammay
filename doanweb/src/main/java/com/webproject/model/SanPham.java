package com.webproject.model;
import javax.persistence.*;

@Entity
@Table(name="sanpham")
public class SanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer masp;

    @Column(name="tensp")
    private String tensp;

    @Column(name="dongia")
    private Integer dongia;

    @Column(name="hinhsp")
    private byte[] hinhsp;

    @Column(name="maloaisp")
    private Integer maloaisp;

    @Column (name="motasp")
    private String motasp;

    public String getMotasp() {
        return motasp;
    }

    public void setMotasp(String motasp) {
        this.motasp = motasp;
    }



    public Integer getmasp() {
        return masp;
    }

    public void setmasp(Integer masp) {
        this.masp = masp;
    }

    public String gettensp() {
        return tensp;
    }

    public void settensp(String tensp) {
        this.tensp = tensp;
    }

    public Integer getdongia() {
        return dongia;
    }

    public void setdongia(Integer dongia) {
        this.dongia = dongia;
    }

    public byte[] gethinhsp() {
        return hinhsp;
    }

    public void sethinhsp(byte[] hinhsp) {
        this.hinhsp = hinhsp;
    }

    public Integer getmaloaisp() {
        return maloaisp;
    }

    public void setmaloaisp(Integer maloaisp) {
        this.maloaisp = maloaisp;
    }
}
