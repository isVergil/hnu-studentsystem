package com.springmvc.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class IndexController {

    /**
     * 进入首页
     * @return
     */
    @GetMapping("/index")
    public String index() {
        return "index";
    }

}
