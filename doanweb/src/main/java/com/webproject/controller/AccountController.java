package com.webproject.controller;

import com.webproject.model.Account;
import com.webproject.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value="/login")
public class AccountController {
    @Autowired
    AccountService accountService;

    @RequestMapping(value="/", method= RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("login");
        return model;
    }

    @RequestMapping(value="/account", method=RequestMethod.POST)
    public String account(@RequestParam("id") Integer id,
                          @RequestParam("username") String username,
                          @RequestParam("pass") String pass,
                          HttpServletRequest request) {
        Account acc= new Account();

        acc = accountService.getAccountById(id);



        if(acc==null)
        {
            return "login";
        }
        else {
            if (acc.getPassword().equals(pass) && acc.getUsername().equals(username)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                return "redirect:/sanpham/listadmin";
            } else {
                return "login";
            }


        }
    }
}
