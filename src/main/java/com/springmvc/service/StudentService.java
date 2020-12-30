package com.springmvc.service;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Student;

public interface StudentService {
    //条件查询 返回分页 Student
    public PageInfo<Student> queryStudentInfo(String name,int page,int limit);

    //新增 Student
    public int insertStudent(Student student);
}
