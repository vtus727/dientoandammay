package com.webproject.service;


import com.webproject.model.HoaDon;
import com.webproject.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HoaDonServicempl implements HoaDonService {
    @Autowired
    HoaDonRepository hoaDonRepository;

    @Override
    public List<HoaDon> getAllHoaDon() {
        return (List<HoaDon>) hoaDonRepository.findAll();
    }

    @Override
    public HoaDon getHoaDonByMaHD(Integer mahd) {
        return hoaDonRepository.findById(mahd).get();
    }

    @Override
    public void saveOrUpdate(HoaDon hoaDon) {
        hoaDonRepository.save(hoaDon);
    }

    @Override
    public void deleteHoaDon(Integer mahd) { hoaDonRepository.deleteById(mahd);
    }
}
