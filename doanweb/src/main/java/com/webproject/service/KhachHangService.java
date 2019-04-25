package com.webproject.service;
import com.webproject.model.KhachHang;

import java.util.List;

public interface KhachHangService {
    public List<KhachHang> getAllKhachHang();

    public KhachHang getKhachHangByMaKH(Integer makh);

    public void saveOrUpdate(KhachHang khachHang);

    public void deleteKhachHang(Integer makh);
}
