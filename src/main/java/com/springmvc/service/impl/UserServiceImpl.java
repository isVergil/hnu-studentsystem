package com.springmvc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springmvc.dao.UserMapper;
import com.springmvc.entity.User;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;

    @Override
    public PageInfo<User> queryAdminInfoAll(User admin, int page, int limit) {
        PageHelper.startPage(page, limit);
        List<User> list = userDao.queryAdminInfoAll(admin);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public int addAdminSubmit(User admin) {
        return userDao.insert(admin);
    }

    @Override
    public int updateAdminSubmit(User admin) {
        return userDao.updateByPrimaryKey(admin);
    }

    @Override
    public int deleteAdminByIds(List<String> ids) {
        int num = 0;
        for (String id : ids) {
            num += userDao.deleteByPrimaryKey(Integer.valueOf(id));
        }
        return num;
    }

    @Override
    public User queryAdminById(Integer id) {
        return userDao.selectByPrimaryKey(id);
    }

    @Override
    public User queryUserByNameAndPassword(String username, String password, Integer type) {
        return userDao.queryUserByNameAndPassword(username, password,type);
    }
}
