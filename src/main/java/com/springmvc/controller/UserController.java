package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.User;
import com.springmvc.service.UserService;
import com.springmvc.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {
    //自动装配
    @Autowired
    private UserService userService;

    /**
     * 进入user页面
     *
     * @return
     */
    @GetMapping("/infoPage")
    public String userInfoPage() {
        return "user";
    }

    /**
     * 进入新增页面
     *
     * @return
     */
    @GetMapping("/addPage")
    public String addPage() {
        return "adduser";
    }

    /**
     * 获取所有数据
     *
     * @param username
     * @param chinesename
     * @param status
     * @param type
     * @param page
     * @param limit
     * @return
     */
    @GetMapping("/info")
    @ResponseBody
    public R findAll(String username, String chinesename, Integer status, Integer type, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            User user = new User(username, chinesename, status, type, null, null, null);
            PageInfo<User> userPageInfo = userService.queryUserInfo(user, page, limit);
            return R.ok("成功", userPageInfo.getList());
        } catch (Exception e) {
            //todo 异常日志
            return R.fail("失败");
        } finally {
            //todo 操作日志
        }
    }

    @PostMapping("/add")
    @ResponseBody
    public R add(@RequestBody User user) {
        try {
            Integer influenceCount = userService.insertUser(user);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            //todo 异常日志
            return R.fail("失败");
        } finally {
            //todo 操作日志
        }
    }
}
