package com.springmvc.service;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.User;

import java.util.List;

public interface UserService {
    //分页查询
    PageInfo<User> queryAdminInfoAll(User admin, int page, int limit);

    //添加
    int addAdminSubmit(User admin);

    //修改
    int updateAdminSubmit(User admin);

    //删除
    int deleteAdminByIds(List<String> ids);

    //根据id查询详细信息
    User queryAdminById(Integer id);

    //登录查询
    User queryUserByNameAndPassword(String username, String password,Integer type);
}
