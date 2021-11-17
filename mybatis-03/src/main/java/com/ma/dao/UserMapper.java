package com.ma.dao;

import com.ma.pojo.User;

import java.util.List;

/**
 * @author ASUS
 */
public interface UserMapper {

    //根据id查询用户
    User getUserById(int id);
}
