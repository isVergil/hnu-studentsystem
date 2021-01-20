package com.springmvc.controller;


import com.github.pagehelper.PageInfo;
import com.springmvc.entity.User;
import com.springmvc.service.UserService;
import com.springmvc.util.R;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    //日志
    private static Logger logger = Logger.getLogger(LoginController.class);

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
    //日志页面
    @GetMapping("/logPage")
    public String log() {
        return "log";
    }
    /**
     * 登录验证方法
     */
    @RequestMapping("/loginIn")
    public String loginIn(HttpServletRequest request, Model model) {
        try {
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
        } catch (NumberFormatException e) {
            logger.error(e.toString());
            throw e;
        } finally {
            logger.info(request.getParameter("username") + " 登录");
        }
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

    /**
     * 进入找回密码页面
     */
    @GetMapping("/findpassword")
    public String findpasswordPage() {
        return "findpassword";
    }

    /**
     * 验证找回密码的账号
     */
    @PostMapping("/verifyAccount")
    @ResponseBody
    public R findpassword(@RequestBody User user) {
        try {
            if (user.getType() == 1)
                user.setRole(null);
            PageInfo<User> userPageInfo = userService.queryUserInfo(user, 1, 10);
            if (userPageInfo.getTotal() > 0) {
                return R.ok(userPageInfo.getList().get(0).getId().toString(), null);
            } else
                return R.fail("未找到");
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("异常");
        } finally {
            logger.info("找回了密码");
        }
    }

    @PostMapping("/changePassword")
    @ResponseBody
    public R changePassword(@RequestBody User user) {
        try {
            Integer influenceCount = userService.updatePassword(user);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("异常");
        } finally {
            logger.info("修改了密码");
        }
    }
}
