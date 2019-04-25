package com.webproject.controller;
import com.webproject.model.KhachHang;
import com.webproject.service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/khachhang")
public class KhachHangController {

    @Autowired
    KhachHangService khachHangService;


    @RequestMapping(value="/list", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("khachhang_list");
        List<KhachHang> khachHangList = khachHangService.getAllKhachHang();
        model.addObject("khachHangList", khachHangList);

        return model;
    }

    @RequestMapping(value="/addKhachHang/", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView addKhachHang() {
        ModelAndView model = new ModelAndView();

        KhachHang khachHang = new KhachHang();
        model.addObject("khachHangForm", khachHang);
        model.setViewName("khachhang_form");

        return model;
    }

    @RequestMapping(value="/updateKhachHang/{makh}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView editKhachHang(@PathVariable Integer makh) {
        ModelAndView model = new ModelAndView();

        KhachHang khachHang = khachHangService.getKhachHangByMaKH(makh);
        model.addObject("khachHangForm", khachHang);
        model.setViewName("khachhang_form");
        return model;
    }

    @RequestMapping(value="/saveKhachHang", method=RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save(@ModelAttribute("khachhangForm") KhachHang khachHang) {
        khachHangService.saveOrUpdate(khachHang);

        return new ModelAndView("redirect:/khachhang/list");
    }

    @RequestMapping(value="/deleteKhachHang/{makh}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView delete(@PathVariable("makh") Integer makh) {
        khachHangService.deleteKhachHang(makh);
        return new ModelAndView("redirect:/khachhang/list");
    }
}
