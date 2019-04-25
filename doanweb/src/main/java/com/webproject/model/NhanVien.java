package com.webproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="nhanvien")
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer manv;

    @Column(name="tennv")
    private String tennv;

    @Column(name="gioitinh")
    private String gioitinh;

    @Column(name="sodt")
    private String sodt;

    @Column(name="dchi")
    private String dchi;

    public Integer getmanv()
    {
        return  manv;
    }
    public void setmanv(Integer manv)
    {
        this.manv =manv;
    }

    public  String gettennv()
    {
        return tennv;
    }
    public void settennv(String tennv)
    {
        this.tennv = tennv;
    }

    public  String getgioitinh() {return  gioitinh;}
    public  void setGioitinh(String gioitinh){this.gioitinh = gioitinh;}

    public  String getSodt(){return  sodt;}
    public  void setSodt(String sodt){this.sodt = sodt;}

    public  String getDchi(){return  dchi;}
    public  void setDchi(String dchi){this.dchi = dchi;}
}
