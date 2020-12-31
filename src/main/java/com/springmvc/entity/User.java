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
    private Integer status;
    private Integer type;
    private String remark;
}
