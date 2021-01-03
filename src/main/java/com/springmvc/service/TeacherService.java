package com.springmvc.service;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Teacher;

import java.util.List;

public interface TeacherService {

    //新增 teacher
    int insertTeacherInfo(Teacher teacher);

    //更新 Student
    void updateTeacherInfo(Teacher teacher);

    /**
     * 分页查询
     *
     * @param contact1 name 和 teacherid 模糊查询
     * @param contact2 academy 和 dept 模糊查询
     * @param research
     * @param gender
     * @param page
     * @param limit
     * @return
     */
    PageInfo<Teacher> queryTeacherInfo(String contact1, String contact2, String research, Integer gender, int page, int limit);

    //edit 条件查询  id
    Teacher queryTeacherInfoById(Long id);

    //删除 ids
    void deleteTeacherInfoByIds(List<String> ids);

    List<Teacher> queryAllTeachers();
}
