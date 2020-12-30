package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/student")
    public String student() {
        return "student";
    }

    @GetMapping("/addStudent")
    public String addStudent() {
        return "addstudent";
    }
}
