package com.webproject.controller;

import com.webproject.model.SanPham;
import com.webproject.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value="/sanpham")
public class SanPhamController {
    @Autowired
    SanPhamService sanPhamService;

    @RequestMapping(value="/spgiay")
    public ModelAndView listGiay() {
        ModelAndView model = new ModelAndView("spgiay");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);

        return model;
    }

    @RequestMapping(value="/spaothidau")
    public ModelAndView listAothidau() {
        ModelAndView model = new ModelAndView("spaothidau");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);

        return model;
    }

    @RequestMapping(value="/spbongtd")
    public ModelAndView listBongtd() {
        ModelAndView model = new ModelAndView("spbongtd");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);

        return model;
    }

    @RequestMapping(value="/spgangtay")
    public ModelAndView listGangtay() {
        ModelAndView model = new ModelAndView("spgangtay");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);

        return model;
    }

    @RequestMapping(value="/spquandai")
    public ModelAndView listQuandai() {
        ModelAndView model = new ModelAndView("spquandai");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);

        return model;
    }

    @RequestMapping(value="/spaokhoac")
    public ModelAndView listAokhoac() {
        ModelAndView model = new ModelAndView("spaokhoac");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);
        return model;
    }

    @RequestMapping(value="/news")
    public ModelAndView news() {
        ModelAndView model = new ModelAndView("news");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);
        return model;
    }

    @RequestMapping(value="/about")
    public ModelAndView about() {
        ModelAndView model = new ModelAndView("about");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);
        return model;
    }


    @RequestMapping(value="/list", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("sanpham_list");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamList", sanPhamList);
        return model;
    }


    @RequestMapping(value="/listadmin", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView list_admin() {
        ModelAndView model = new ModelAndView("sanpham_list_admin");
        List<SanPham> sanPhamList = sanPhamService.getAllSanPham();
        model.addObject("sanPhamListAdmin", sanPhamList);

        return model;
    }
    @RequestMapping(value="/addSanPham/", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView addSanPham() {
        ModelAndView model = new ModelAndView();

        SanPham sanPham = new SanPham();
        model.addObject("sanPhamForm", sanPham);
        model.setViewName("sanpham_form");
        return model;
    }
    @RequestMapping(value="/addSanPham2/", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView addSanPham2() {
        ModelAndView model = new ModelAndView();

        SanPham sanPham = new SanPham();
        model.addObject("sanPhamForm2", sanPham);
        model.setViewName("sanpham_form2");
        return model;
    }
    @RequestMapping(value="/updateSanPham/{masp}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView editKhachHang(@PathVariable Integer masp) {
        ModelAndView model = new ModelAndView();

        SanPham sanPham = sanPhamService.getSanPhamByMaSP(masp);
        model.addObject("sanPhamForm", sanPham);
        model.setViewName("sanpham_form");
        return model;
    }
    @RequestMapping(value="/updateSanPham2/{masp}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView editKhachHang2(@PathVariable Integer masp) {
        ModelAndView model = new ModelAndView();

        SanPham sanPham = sanPhamService.getSanPhamByMaSP(masp);
        model.addObject("sanPhamForm2", sanPham);
        model.setViewName("sanpham_form2");
        return model;
    }

    @RequestMapping(value="/saveSanPham", method=RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save(@ModelAttribute("sanphamForm") SanPham sanPham) {
        sanPhamService.saveOrUpdate(sanPham);

        return new ModelAndView("redirect:/sanpham/list");
    }
    @RequestMapping(value="/saveSanPham1", method=RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save1(@ModelAttribute("sanphamForm1") SanPham sanPham) {
        sanPhamService.saveOrUpdate(sanPham);

        return new ModelAndView("redirect:/sanpham/listadmin");
    }
    @RequestMapping(value="/saveSanPham2", method=RequestMethod.POST,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView save2(@ModelAttribute("sanphamForm") SanPham sanPham) {
        sanPhamService.saveOrUpdate(sanPham);

        return new ModelAndView("redirect:/sanpham/listadmin");
    }
    @RequestMapping(value="/deleteSanPham/{masp}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView delete(@PathVariable("masp") Integer masp) {
        sanPhamService.deleteSanPham(masp);
         return new ModelAndView("redirect:/sanpham/list");
    }
    @RequestMapping(value="/deleteSanPham1/{masp}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView delete1(@PathVariable("masp") Integer masp) {
        sanPhamService.deleteSanPham(masp);
        return new ModelAndView("redirect:/sanpham/listadmin");
    }
    @RequestMapping(value="/deleteSanPham2/{masp}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView delete2(@PathVariable("masp") Integer masp) {
        sanPhamService.deleteSanPham(masp);
        return new ModelAndView("redirect:/sanpham/listadmin");
    }
    @RequestMapping(value = { "/productImage" }, method = RequestMethod.GET)
    public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
                             @RequestParam("masp") int masp) throws IOException {
        SanPham sanPham = null;
                   sanPham = this.sanPhamService.getSanPhamByMaSP(masp);

        if (sanPham != null && sanPham.gethinhsp() != null) {
            response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
            response.getOutputStream().write(sanPham.gethinhsp());
        }
        response.getOutputStream().close();
    }
    @RequestMapping(value="/chitietsanpham/{masp}", method=RequestMethod.GET,
            produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView chitiet(@PathVariable Integer masp) {
        ModelAndView model = new ModelAndView();

        SanPham sanPham = sanPhamService.getSanPhamByMaSP(masp);
        model.addObject("chiTietSanPham", sanPham);
        model.setViewName("chitietsanpham");
        return model;
    }

}
