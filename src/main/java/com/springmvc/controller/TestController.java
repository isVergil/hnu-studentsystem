package com.springmvc.controller;

import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

public class TestController {

    //controller层调service层

//    @Autowired
//    @Qualifier("UserImpl")
//    private UserService userService;
//
//    @RequestMapping("/test")
//    public String testing() {
//        System.out.println("ceshi");
//        return "test";
//    }
}
