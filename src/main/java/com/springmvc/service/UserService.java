package com.springmvc.service;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.User;


public interface UserService {
    //分页查询
    PageInfo<User> queryAllUserInfo(int page, int limit);

    //登录查询
    User queryUserByNameAndPassword(String username, String password, Integer type);

    //findall  用户管理 分页
    PageInfo<User> queryUserInfo(User user, int page, int limit);

    int insertUser(User user);

    int updatePassword(User user);

    int updateRole(Long id,Long role);

}
