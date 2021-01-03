package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Teacher;
import com.springmvc.service.DictionaryService;
import com.springmvc.service.TeacherService;
import com.springmvc.util.R;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    //日志
    private static Logger logger = Logger.getLogger(StudentController.class);

    //自动装配
    @Autowired
    private TeacherService teacherService;

    @Autowired
    private DictionaryService dictionaryService;

    /**
     * 进入teacher 页面
     *
     * @return
     */
    @GetMapping("/infoPage")
    public String infopage() {
        return "teacher";
    }

    /**
     * 进入新增页面
     *
     * @return
     */
    @GetMapping("/addPage")
    public String addBook() {
        return "addteacher";
    }


    @GetMapping("/editPage")
    public String queryBookInfoById(Model model, Long id) {
        Teacher editinfo = teacherService.queryTeacherInfoById(id);
        model.addAttribute("editinfo", editinfo);
        return "editteacher";
    }

    /**
     * 获取 t_student_baseinfo 数据 分页
     *
     * @param contact1
     * @param contact2
     * @param research
     * @param gender
     * @param page
     * @param limit
     * @return
     */
    @GetMapping("/info")
    @ResponseBody
    public R findAll(String contact1, String contact2, String research, Integer gender, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            PageInfo<Teacher> teacherPageInfo = teacherService.queryTeacherInfo(contact1, contact2, research, gender, page, limit);
            return R.ok("成功", teacherPageInfo.getList());
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {

        }
    }

    @GetMapping("/getAll")
    @ResponseBody
    public R findAll() {
        try {
            List<Teacher> teacherPageInfo = teacherService.queryAllTeachers();
            return R.ok("成功", teacherPageInfo);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {

        }
    }

    /**
     * 新增教师
     *
     * @param teacher
     * @return
     */
    @PostMapping("/add")
    @ResponseBody
    public R addStudent(@RequestBody Teacher teacher) {
        try {
            Integer influenceCount = teacherService.insertTeacherInfo(teacher);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("新增了一条老师信息");
        }
    }

    @GetMapping("/deleteByIds")
    @ResponseBody
    public R deleteBookByIds(@Param(value = "ids") String ids) {
        try {
            List list = Arrays.asList(ids.split(","));
            teacherService.deleteTeacherInfoByIds(list);
            return R.ok();
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("删除了一些老师信息");
        }
    }


}
