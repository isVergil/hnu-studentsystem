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
    private String idcard;
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
}
