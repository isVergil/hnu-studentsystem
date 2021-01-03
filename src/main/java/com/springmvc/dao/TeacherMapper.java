package com.springmvc.dao;

import com.springmvc.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {
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
     * @return
     */
    List<Teacher> queryTeacherInfo(@Param("contact1") String contact1, @Param("contact2") String contact2, @Param("research") String research, @Param("gender") Integer gender);

    //edit 条件查询  id
    Teacher queryTeacherInfoById(Long id);

    //删除 ids
    void deleteTeacherInfoById(Integer id);

    List<Teacher> queryAllTeachers();


}
