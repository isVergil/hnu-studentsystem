package com.springmvc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springmvc.dao.StudentMapper;
import com.springmvc.entity.Student;
import com.springmvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("studentService")
public class StudentServiceImpl implements StudentService {
    //自动装配
    @Autowired
    private StudentMapper studentDao;

    @Override
    public PageInfo<Student> queryStudentInfo(String academy, String contact, String name, String studentid, String idcard, Integer gender, int page, int limit) {
        //传入参数，每页页数，当前页
        PageHelper.startPage(page, limit);
        List<Student> list = studentDao.queryStudentInfo(academy, contact, name, studentid, idcard, gender);
        //通过包装获取分页需要的其他值信息
        PageInfo<Student> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public int insertStudent(Student student) {
        int influenceCount = studentDao.insertStudentInfo(student);
        return influenceCount;
    }

    @Override
    public Student queryStudentInfoById(Long id) {
        return studentDao.queryStudentInfoById(id);
    }

    @Override
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    @Override
    public void deleteStudentInfoByIds(List<String> ids) {
        for (String id : ids) {
            studentDao.deleteStudentInfoById(Integer.parseInt(id));
        }
    }
}
