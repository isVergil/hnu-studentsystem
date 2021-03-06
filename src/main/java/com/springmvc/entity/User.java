package com.springmvc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable {
    private Long id;
    private String username;
    private String password;
    private String chinesename;
    private String connect;
    private Integer status;
    private Integer type;
    private String remark;
    private Integer role;

    //附加字段
    private String name;

    public User(String username, String chinesename, Integer status, Integer type, String connect, String remark, String password, Integer role) {
        this.username = username;
        this.chinesename = chinesename;
        this.status = status;
        this.type = type;
        this.role = role;
        //多余的
        this.connect = connect;
        this.remark = remark;
        this.password = password;
    }
}
