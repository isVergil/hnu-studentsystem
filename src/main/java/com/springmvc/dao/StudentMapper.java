package com.springmvc.dao;

import com.springmvc.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("studentDao")
public interface StudentMapper {
    //条件查询全部
    List<Student> queryStudentInfo(@Param(value = "name")String name);

    //新增一个学生
    int insertStudentInfo(Student student);
}
