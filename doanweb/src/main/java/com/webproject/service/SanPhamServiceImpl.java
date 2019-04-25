package com.webproject.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webproject.model.SanPham;
import com.webproject.repository.SanPhamRepository;
@Service
@Transactional
public class SanPhamServiceImpl implements SanPhamService {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Override
    public List<SanPham> getAllSanPham() {
        return (List<SanPham>) sanPhamRepository.findAll();
    }

    @Override
    public SanPham getSanPhamByMaSP(Integer masp) {
        return sanPhamRepository.findById(masp).get();
    }

    @Override
    public void saveOrUpdate(SanPham sanPham) {
        sanPhamRepository.save(sanPham);
    }

    @Override
    public void deleteSanPham(Integer masp) { sanPhamRepository.deleteById(masp);
    }
}
