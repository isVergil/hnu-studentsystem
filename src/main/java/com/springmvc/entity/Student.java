package com.springmvc.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private Long id;
    private String name;
    private String studentid;
    private String idcard;
    private Long academy;
    private Long dept;
    private Long classs;
    private String research;
    private boolean gender;
    @JSONField(format = "yyyy-MM-dd")
    private Date birthdate;
    private String email;
    private String telephone;
    private String qq;
    private String wechat;
    private String homeaddress;
    private String nation;
    private String remarks;
    private Integer teacher;
    //附加字段
    private String academyCN;
    private String deptCN;
    private String classsCN;
    private String genderCN;
    private String teacherCN;
}
