package com.springmvc.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    //日志
    private static Logger logger = Logger.getLogger(HomeController.class);

    /**
     * 进入hompage
     *
     * @return
     */
    @GetMapping("/home")
    public String home() {
        return "homepage";
    }

    //todo 数据展示

}
