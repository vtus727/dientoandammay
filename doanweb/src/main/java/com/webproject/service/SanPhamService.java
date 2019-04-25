package com.webproject.service;
import com.webproject.model.SanPham;

import java.util.List;
public interface SanPhamService {
    public List<SanPham> getAllSanPham();

    public SanPham getSanPhamByMaSP(Integer masp);

    public void saveOrUpdate(SanPham sanPham);

    public void deleteSanPham(Integer masp);
}
