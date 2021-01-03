package com.springmvc.dao;

import com.springmvc.entity.ChartHelper;
import com.springmvc.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("studentDao")
public interface StudentMapper {
    /***
     *
     * @param academy 学院 班级 专业 研究方向  4个模糊查询
     * @param contact 手机 qq  微信 邮箱 4个模糊查询
     * @param name    姓名模糊查询
     * @param studentid  学号模糊查询
     * @param idcard   身份证号码模糊查询
     * @param gender   性别查询
     * @return
     */
    List<Student> queryStudentInfo(@Param(value = "academy") String academy, @Param(value = "contact") String contact, @Param(value = "name") String name, @Param(value = "studentid") String studentid, @Param(value = "idcard") String idcard, @Param(value = "gender") Integer gender, @Param(value = "dept") Integer dept);

    //新增一个学生
    int insertStudentInfo(Student student);

    Student queryStudentInfoById(@Param("id") Long id);

    void updateStudent(Student student);

    void deleteStudentInfoById(Integer id);

    List<ChartHelper> queryChartInfo();
}
