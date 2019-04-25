package com.webproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="loaisanpham")
public class LoaiSanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer maloaisp;

    @Column(name="tenloaisp")
    private String tenloaisp;

    public Integer getmaloaisp()
    {
      return  maloaisp;
    };
    public void setmaloaisp(Integer maloaisp)
    {
        this.maloaisp =maloaisp;
    }
    public  String gettenloaisp()
    {
        return tenloaisp;
    }
    public void settenloaisp(String tenloaisp)
    {
        this.tenloaisp = tenloaisp;
    }
}
