package com.springmvc.dao;

import com.springmvc.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    List<User> queryAllUserInfo();

    User queryUserByNameAndPassword(@Param("username") String username, @Param("password") String password, @Param("type") Integer type);

    List<User> queryUserInfo(User user);

    int insertUser(User user);

    int updatePassword(User user);

    int updateRole(Long id, Long role);
}
