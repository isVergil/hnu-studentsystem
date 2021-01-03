package com.springmvc.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Log {
    private Long id;
    private String loglevel;
    private String classs;
    private String message;
    private String method;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private String createtime;
}
