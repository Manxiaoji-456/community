package com.kgc.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Logincontroller_man {

    @RequestMapping("gologin.do")
    public String gologin(){
        return "login";
    }

    @RequestMapping("login.do")
    public String login(Model model,String username,String password){

        model.addAttribute("msg","登录失败");
        return "login";
    }
}
