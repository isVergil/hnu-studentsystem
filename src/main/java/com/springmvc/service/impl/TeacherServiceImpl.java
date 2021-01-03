package com.springmvc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springmvc.dao.TeacherMapper;
import com.springmvc.entity.Teacher;
import com.springmvc.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherMapper teacherDao;

    @Override
    public int insertTeacherInfo(Teacher teacher) {
        int influenceCount = teacherDao.insertTeacherInfo(teacher);
        return influenceCount;
    }

    @Override
    public void updateTeacherInfo(Teacher teacher) {
        teacherDao.updateTeacherInfo(teacher);
    }

    @Override
    public PageInfo<Teacher> queryTeacherInfo(String contact1, String contact2, String research, Integer gender, int page, int limit) {
        //传入参数，每页页数，当前页
        PageHelper.startPage(page, limit);
        List<Teacher> list = teacherDao.queryTeacherInfo(contact1, contact2, research, gender);
        //通过包装获取分页需要的其他值信息
        PageInfo<Teacher> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public Teacher queryTeacherInfoById(Long id) {
        return teacherDao.queryTeacherInfoById(id);
    }

    @Override
    public void deleteTeacherInfoByIds(List<String> ids) {
        for (String id : ids) {
            teacherDao.deleteTeacherInfoById(Integer.valueOf(id));
        }
    }

    @Override
    public List<Teacher> queryAllTeachers() {
        return teacherDao.queryAllTeachers();
    }
}
