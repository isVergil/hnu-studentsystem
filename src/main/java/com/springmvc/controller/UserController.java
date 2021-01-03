package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.User;
import com.springmvc.service.UserService;
import com.springmvc.util.R;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {
    //日志
    private static Logger logger = Logger.getLogger(UserController.class);

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
            User user = new User(username, chinesename, status, type, null, null, null, null);
            PageInfo<User> userPageInfo = userService.queryUserInfo(user, page, limit);
            return R.ok("成功", userPageInfo.getList());
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
        }
    }

    @PostMapping("/add")
    @ResponseBody
    public R add(@RequestBody User user) {
        try {
            Integer influenceCount = userService.insertUser(user);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("新增了一条用户信息");
        }
    }


    /**
     * 进入权限管理页面
     *
     * @return
     */
    @GetMapping("/rolePage")
    public String rolePage() {
        return "role";
    }

    @GetMapping("/roleInfo")
    @ResponseBody
    public R findAll(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            PageInfo<User> userPageInfo = userService.queryAllUserInfo(page, limit);
            return R.ok("成功", userPageInfo.getList());
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
        }
    }

    /**
     * 进入权限管理页面
     *
     * @return
     */
    @GetMapping("/editRole")
    public String editRole(Model model, @Param(value = "role") Integer role, @Param(value = "id") Integer id) {
        model.addAttribute("role", role);
        model.addAttribute("id", id);
        return "roleedit";
    }

    @GetMapping("/updateRole")
    @ResponseBody
    public R findAll(@Param(value = "id") Long id, @Param(value = "role") Long role) {
        try {
            Integer influenceRows = userService.updateRole(id, role);
            return R.ok(influenceRows.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
        }
    }

    @GetMapping("/changePasswordPage")
    public String changePassword() {
        return "changepassword";
    }

    @GetMapping("/changePassword")
    @ResponseBody
    public R updatepsw(@Param(value = "id") Long id, @Param("password") String password) {
        try {
            User user = new User();
            user.setId(id);
            user.setPassword(password);
            Integer influenceCount = userService.updatePassword(user);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("修改密码成功");
        }
    }

}
