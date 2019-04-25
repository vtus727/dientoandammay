package com.webproject.service;

import com.webproject.model.NhanVien;

import java.util.List;

public interface NhanVienService {
    public List<NhanVien> getAllNhanVien();

    public NhanVien getNhanVienByMaNV(Integer manv);

    public void saveOrUpdate(NhanVien nhanVien);

    public void deleteNhanVien(Integer manv);

}
