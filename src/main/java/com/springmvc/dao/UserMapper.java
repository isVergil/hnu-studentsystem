package com.springmvc.dao;

import com.springmvc.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> queryAdminInfoAll(User admin);

    User queryUserByNameAndPassword(@Param("username") String username, @Param("password") String password, @Param("type") Integer type);

    List<User> queryUserInfo(User user);

    int insertUser(User user);

}
