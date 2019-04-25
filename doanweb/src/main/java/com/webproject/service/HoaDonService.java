package com.webproject.service;

import com.webproject.model.HoaDon;

import java.util.List;

public interface HoaDonService {
    public List<HoaDon> getAllHoaDon();

    public HoaDon getHoaDonByMaHD(Integer mahd);

    public void saveOrUpdate(HoaDon hoaDon);

    public void deleteHoaDon(Integer mahd);
}
