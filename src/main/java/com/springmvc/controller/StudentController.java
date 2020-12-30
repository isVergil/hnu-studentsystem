package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Student;
import com.springmvc.service.StudentService;
import com.springmvc.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/student")
public class StudentController {
    //自动装配
    @Autowired
    private StudentService studentService;

    /***
     * 获取 t_student_baseinfo 数据 分页
     * @param name
     * @param page
     * @param limit
     * @return
     */
    @GetMapping("/info")
    public R findAll(String name, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            PageInfo<Student> studentPageInfo = studentService.queryStudentInfo(name, page, limit);
            return R.ok("成功", studentPageInfo.getList());
        } catch (Exception e) {
            return  R.fail("失败");
        }
        finally {
            //todo 日志
        }
    }

    /***
     * 新增学生
     * @return
     */
    @PostMapping("/add")
    public void addStudent(Student student ) {
        try {
            int influenceCount=studentService.insertStudent(student);
        } catch (Exception e) {

        }
        finally {
            //todo 日志
        }
    }
}
