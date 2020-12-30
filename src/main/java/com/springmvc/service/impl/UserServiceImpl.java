package com.springmvc.service.impl;

import com.springmvc.dao.UserMapper;
import com.springmvc.entity.User;
import com.springmvc.service.UserService;

public class UserServiceImpl implements UserService {
    //业务层调dao层 （数据持久层）
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int deleteById(Long id) {
        return userMapper.deleteById(id);
    }
}
