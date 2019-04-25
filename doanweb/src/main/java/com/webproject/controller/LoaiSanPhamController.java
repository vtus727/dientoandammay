package com.webproject.controller;

import com.webproject.model.LoaiSanPham;
import com.webproject.service.LoaiSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/loaisanpham")
public class LoaiSanPhamController {
    @Autowired
    LoaiSanPhamService loaiSanPhamService;

    @RequestMapping(value="/list", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("loaisanpham_list");
        List<LoaiSanPham> loaiSanPhamList = loaiSanPhamService.getAllLoaiSanPham();
        model.addObject("loaiSanPhamList", loaiSanPhamList);

        return model;
    }

    @RequestMapping(value="/addLoaiSanPham/", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")

    public ModelAndView addLoaiSanPham() {
        ModelAndView model = new ModelAndView();

        LoaiSanPham loaiSanPham = new LoaiSanPham();
        model.addObject("loaiSanPhamForm", loaiSanPham);
        model.setViewName("loaisanpham_form");

        return model;
    }

    @RequestMapping(value="/updateLoaiSanPham/{maloaisp}", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView editLoaiSanPham(@PathVariable Integer maloaisp) {
        ModelAndView model = new ModelAndView();

        LoaiSanPham loaiSanPham = loaiSanPhamService.getLoaiSanPhamByMaLoaiSP(maloaisp);
        model.addObject("loaiSanPhamForm", loaiSanPham);
        model.setViewName("loaisanpham_form");
        return model;
    }

    @RequestMapping(value="/saveLoaiSanPham", method= RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save(@ModelAttribute("loaiSanPhamForm") LoaiSanPham loaiSanPham) {
        loaiSanPhamService.saveOrUpdate(loaiSanPham);

        return new ModelAndView("redirect:/loaisanpham/list");
    }

    @RequestMapping(value="/deleteLoaiSanPham/{maloaisp}", method= RequestMethod.GET)
    public ModelAndView delete(@PathVariable("maloaisp") Integer maloaisp) {
        loaiSanPhamService.deleteLoaiSanPham(maloaisp);
        return new ModelAndView("redirect:/loaisanpham/list");
    }
}
