package com.webproject.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webproject.model.KhachHang;
import com.webproject.repository.KhachHangRepository;

@Service
@Transactional
public class KhachHangServiceImpl implements KhachHangService {

    @Autowired
    KhachHangRepository khachHangRepository;

    @Override
    public List<KhachHang> getAllKhachHang() {
        return (List<KhachHang>) khachHangRepository.findAll();
    }

    @Override
    public KhachHang getKhachHangByMaKH(Integer makh) {
        return khachHangRepository.findById(makh).get();
    }

    @Override
    public void saveOrUpdate(KhachHang khachHang) {
        khachHangRepository.save(khachHang);
    }

    @Override
    public void deleteKhachHang(Integer makh) { khachHangRepository.deleteById(makh);
    }
}
