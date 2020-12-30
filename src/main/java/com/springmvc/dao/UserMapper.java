package com.springmvc.dao;

import com.springmvc.entity.User;

public interface UserMapper {

    //增加用户
    int addUser(User user);

    //删除用户
    int deleteById(Long id);
}
