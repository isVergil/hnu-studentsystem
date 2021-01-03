package com.springmvc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Teacher {
    private Long id;
    private String name;
    private String teacherid;
    private Long academy;
    private Long dept;
    private String research;
    private boolean gender;
    private Long age;
    private String connect;

    //附加字段
    private String academyCN;
    private String deptCN;
}
