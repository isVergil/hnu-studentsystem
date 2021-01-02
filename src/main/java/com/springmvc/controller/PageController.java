package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {



    @GetMapping("/addStudent")
    public String addStudent() {
        return "addstudent";
    }
}
