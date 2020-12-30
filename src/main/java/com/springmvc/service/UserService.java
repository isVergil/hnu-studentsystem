package com.springmvc.service;

import com.springmvc.entity.User;

public interface UserService {
    //增加用户
    int addUser(User user);

    //删除用户
    int deleteById(Long id);
}
