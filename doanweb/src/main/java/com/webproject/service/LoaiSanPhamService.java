package com.webproject.service;

import com.webproject.model.LoaiSanPham;

import java.util.List;

public interface LoaiSanPhamService {
    public List<LoaiSanPham> getAllLoaiSanPham();

    public LoaiSanPham getLoaiSanPhamByMaLoaiSP(Integer maloaisp);

    public void saveOrUpdate(LoaiSanPham loaiSanPham);

    public void deleteLoaiSanPham(Integer maloaisp);
}
