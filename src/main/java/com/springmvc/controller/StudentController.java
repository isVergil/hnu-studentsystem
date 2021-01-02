package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Dictionary;
import com.springmvc.entity.Student;
import com.springmvc.service.DictionaryService;
import com.springmvc.service.StudentService;
import com.springmvc.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    //自动装配
    @Autowired
    private StudentService studentService;

    @Autowired
    private DictionaryService dictionaryService;

    /**
     * 进入student页面
     *
     * @return
     */
    @GetMapping("/infoPage")
    public String student() {
        return "student";
    }

    /**
     * 回到首页
     *
     * @return
     */
    @GetMapping("/index")
    public String studentIndex() {
        return "index";
    }

    /**
     * 进入新增页面
     *
     * @return
     */
    @GetMapping("/addPage")
    public String addBook() {
        return "addstudent";
    }

    /**
     * 编辑页面
     *
     * @param model 根据id带其他参数
     * @param id
     * @return
     */
    @GetMapping("/editPage")
    public String queryBookInfoById(Model model, Long id) {
        Student editinfo = studentService.queryStudentInfoById(id);
        model.addAttribute("editinfo", editinfo);
        return "editstudent";
    }

    /***
     * 获取 t_student_baseinfo 数据 分页
     * @param name
     * @param page
     * @param limit
     * @return
     */
    @GetMapping("/info")
    @ResponseBody
    public R findAll(String academy, String contact, String name, String studentid, String idcard, Integer gender, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            PageInfo<Student> studentPageInfo = studentService.queryStudentInfo(academy, contact, name, studentid, idcard, gender, page, limit);
            return R.ok("成功", studentPageInfo.getList());
        } catch (Exception e) {
            return R.fail("失败");
        } finally {
            //todo 日志
        }
    }

    /***
     * 新增学生
     * @return
     */
    @PostMapping("/add")
    @ResponseBody
    public R addStudent(@RequestBody Student student) {
        try {
            Integer influenceCount = studentService.insertStudent(student);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            //todo 错误日志
            return R.fail("失败");
        } finally {
            //todo 操作日志
        }
    }

    @PostMapping("/edit")
    @ResponseBody
    public R editStudent(@RequestBody Student student) {
        try {
            studentService.updateStudent(student);
            return R.ok();
        } catch (Exception e) {
            //todo 错误日志
            return R.fail("失败");
        } finally {
            //todo 操作日志
        }
    }

    @RequestMapping("/deleteByIds")
    @ResponseBody
    public R deleteBookByIds(@RequestBody String ids) {
        try {
            List list = Arrays.asList(ids.split(","));
            studentService.deleteStudentInfoByIds(list);
            return R.ok();
        } catch (Exception e) {
            //todo 错误日志
            return R.fail("失败");
        } finally {
            //todo 操作日志
        }
    }

    /**
     * 三级下拉框联动
     *
     * @param id
     * @param parentid
     * @param name
     * @param remarks
     * @return
     */
    @GetMapping("/getSelectorData")
    @ResponseBody
    public R getAcademyDeptClassData(@RequestParam(value = "id", required = false) Long id, @RequestParam(value = "parentid", required = false) Long parentid, @RequestParam(value = "name", required = false) String name, @RequestParam(value = "remarks", required = false) String remarks) {
        try {
            List<Dictionary> dictionaryList = dictionaryService.queryDictionaryInfo(id, parentid, name, remarks);
            return R.ok("成功", dictionaryList);
        } catch (Exception e) {
            //todo 错误日志
            return R.fail("失败");
        }
    }
}
