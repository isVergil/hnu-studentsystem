package com.springmvc.util;

import java.io.Serializable;
import java.util.List;


/**
 * 返回前端对象 数据封闭类
 */
public class R implements Serializable {
    private static final long serialVersionID = 1L;

    private Integer code;
    private String msg;
    private Object data;
    private Long count;

    public R() {
    }

    public R(int code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
        if (data != null) {
            List list = (List) data;
            this.count = (long) list.size();
        }
    }

    public static R ok() {
        return new R(Constants.OK_CODE, Constants.OK_MSG, null);
    }

    public static R ok(Object data) {
        return new R(Constants.OK_CODE, Constants.OK_MSG, data);
    }

    public static R ok(String msg, Object data) {
        return new R(Constants.OK_CODE, msg, data);
    }

    public static R fail(String msg) {
        return new R(Constants.FAIL_CODE, msg, null);
    }

    public static R fail(int errorCode, String msg) {
        return new R(errorCode, msg, null);
    }

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public Object getData() {
        return data;
    }

    public Long getCount() {
        return count;
    }

    public com.springmvc.util.R setCount(Long count) {
        this.count = count;
        return this;
    }
}
