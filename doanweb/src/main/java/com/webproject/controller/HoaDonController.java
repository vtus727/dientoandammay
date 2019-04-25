package com.webproject.controller;

import com.webproject.model.HoaDon;
import com.webproject.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/hoadon")
public class HoaDonController {
    @Autowired
    HoaDonService hoaDonService;

    @RequestMapping(value="/list", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("hoadon_list");
        List<HoaDon> hoaDonList = hoaDonService.getAllHoaDon();
        model.addObject("hoaDonList", hoaDonList);

        return model;
    }

    @RequestMapping(value="/addHoaDon/", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")

    public ModelAndView addHoaDon() {
        ModelAndView model = new ModelAndView();

        HoaDon hoaDon = new HoaDon();
        model.addObject("hoaDonForm", hoaDon);
        model.setViewName("hoadon_form");

        return model;
    }

    @RequestMapping(value="/updateHoaDon/{mahd}", method= RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView editHoaDon(@PathVariable Integer mahd) {
        ModelAndView model = new ModelAndView();

        HoaDon hoaDon = hoaDonService.getHoaDonByMaHD(mahd);
        model.addObject("hoaDonForm", hoaDon);
        model.setViewName("hoadon_form");
        return model;
    }

    @RequestMapping(value="/saveHoaDon", method= RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save(@ModelAttribute("hoaDonForm") HoaDon hoaDon) {
        hoaDonService.saveOrUpdate(hoaDon);

        return new ModelAndView("redirect:/hoadon/list");
    }

    @RequestMapping(value="/deleteHoaDon/{mahd}", method= RequestMethod.GET)
    public ModelAndView delete(@PathVariable("mahd") Integer mahd) {
        hoaDonService.deleteHoaDon(mahd);
        return new ModelAndView("redirect:/hoadon/list");
    }
}
