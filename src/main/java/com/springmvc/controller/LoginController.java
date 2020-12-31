package com.springmvc.controller;


import com.springmvc.entity.User;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    /**
     * 登录页面的转发
     */
    @GetMapping("/login")
    public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session == null)
            return "login";
        if ((session.getAttribute("user")) != null)
            return "index";
        return "login";
    }

    /**
     * 登录验证方法
     */
    @RequestMapping("/loginIn")
    public String loginIn(HttpServletRequest request, Model model) {
        //获取用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Integer type = Integer.parseInt(request.getParameter("type"));
        //验证登录是否超时
        HttpSession session = request.getSession();
        if (session == null) {
            model.addAttribute("msg", "登录超时了...");
            return "login";
        }
        User user = userService.queryUserByNameAndPassword(username, password, type);
        if (user == null) {//该用户不存在
            model.addAttribute("msg", "用户名或者密码错误...");
            return "login";
        }
        session.setAttribute("user", user);
        session.setAttribute("type", type);
        return "index";
    }

    /**
     * 注销登出
     */
    @GetMapping("/loginOut")
    public String loginOut(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/login";
    }
}
