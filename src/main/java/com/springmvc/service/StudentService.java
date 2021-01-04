package com.springmvc.service;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.ChartHelper;
import com.springmvc.entity.Student;

import java.util.List;

public interface StudentService {

    //新增 Student
    int insertStudent(Student student);

    //更新 Student
    void updateStudent(Student student);

    //条件查询 返回分页 Student
    PageInfo<Student> queryStudentInfo(String academy, String contact, String name, String studentid, String idcard, Integer gender, Integer dept, int page, int limit);

    //edit 条件查询  id
    Student queryStudentInfoById(Long id);

    //删除 ids
    void deleteStudentInfoByIds(List<String> ids);

    List<ChartHelper> queryChartInfo();

    List<List<?>> queryTotalCountHelper();
}
