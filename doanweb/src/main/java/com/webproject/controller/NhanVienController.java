package com.webproject.controller;

import com.webproject.model.NhanVien;
import com.webproject.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/nhanvien")
public class NhanVienController {
    @Autowired
    NhanVienService nhanVienService;

    @RequestMapping(value="/list", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("nhanvien_list");
        List<NhanVien> nhanVienList = nhanVienService.getAllNhanVien();
        model.addObject("nhanVienList", nhanVienList);

        return model;
    }

    @RequestMapping(value="/addNhanVien/", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")

    public ModelAndView addNhanVien() {
        ModelAndView model = new ModelAndView();

        NhanVien nhanVien = new NhanVien();
        model.addObject("nhanVienForm", nhanVien);
        model.setViewName("nhanvien_form");

        return model;
    }

    @RequestMapping(value="/updateNhanVien/{manv}", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView editLoaiSanPham(@PathVariable Integer manv) {
        ModelAndView model = new ModelAndView();

        NhanVien nhanVien = nhanVienService.getNhanVienByMaNV(manv);
        model.addObject("nhanVienForm", nhanVien);
        model.setViewName("nhanvien_form");
        return model;
    }

    @RequestMapping(value="/saveNhanVien", method= RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save(@ModelAttribute("nhanVienForm") NhanVien nhanVien) {
        nhanVienService.saveOrUpdate(nhanVien);

        return new ModelAndView("redirect:/nhanvien/list");
    }

    @RequestMapping(value="/deleteNhanVien/{manv}", method= RequestMethod.GET)
    public ModelAndView delete(@PathVariable("manv") Integer manv) {
        nhanVienService.deleteNhanVien(manv);
        return new ModelAndView("redirect:/nhanvien/list");
    }
}
