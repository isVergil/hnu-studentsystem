package com.springmvc.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Feedback {
    private Long id;
    private Long submiter;
    private Long handler;
    private boolean status;
    private String text;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date submittime;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date handletime;

    //附加字段
    private String handlerCN;
    private String submiterCN;

    public Feedback(Long submiter, boolean status, String text, Date submittime) {
        this.submiter = submiter;
        this.status = status;
        this.text = text;
        this.submittime = submittime;
    }

    //handle更新表
    public Feedback(Long id, Long submiter, Long handler, boolean status, String text, Date submittime, Date handletime) {
        this.id = id;
        this.submiter = submiter;
        this.handler = handler;
        this.status = status;
        this.text = text;
        this.submittime = submittime;
        this.handletime = handletime;
    }
}
