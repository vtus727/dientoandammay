package com.webproject.service;

import com.webproject.model.LoaiSanPham;
import com.webproject.repository.LoaiSanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LoaiSanPhamServicempl implements LoaiSanPhamService {
    @Autowired
    LoaiSanPhamRepository loaiSanPhamReposiory;

    @Override
    public List<LoaiSanPham> getAllLoaiSanPham() {
        return (List<LoaiSanPham>) loaiSanPhamReposiory.findAll();
    }

    @Override
    public LoaiSanPham getLoaiSanPhamByMaLoaiSP(Integer maloaisp) {
        return loaiSanPhamReposiory.findById(maloaisp).get();
    }

    @Override
    public void saveOrUpdate(LoaiSanPham loaiSanPham) {
        loaiSanPhamReposiory.save(loaiSanPham);
    }

    @Override
    public void deleteLoaiSanPham(Integer maloaisp) { loaiSanPhamReposiory.deleteById(maloaisp);
    }
}
