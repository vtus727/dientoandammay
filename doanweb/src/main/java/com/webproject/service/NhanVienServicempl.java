package com.webproject.service;

import com.webproject.model.NhanVien;
import com.webproject.repository.LoaiSanPhamRepository;
import com.webproject.repository.NhanVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NhanVienServicempl implements NhanVienService{
    @Autowired
    NhanVienRepository nhanVienRepository;

    @Override
    public List<NhanVien> getAllNhanVien() {
        return (List<NhanVien>) nhanVienRepository.findAll();
    }

    @Override
    public NhanVien getNhanVienByMaNV(Integer manv) {
        return nhanVienRepository.findById(manv).get();
    }

    @Override
    public void saveOrUpdate(NhanVien nhanVien) {
        nhanVienRepository.save(nhanVien);
    }

    @Override
    public void deleteNhanVien(Integer manv) { nhanVienRepository.deleteById(manv);
    }
}
