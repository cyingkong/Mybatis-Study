package com.ma.dao;

import com.ma.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author ASUS
 */
public interface UserMapper {

    //根据id查询用户
    User queryUserById(@Param("id") int id);

    int updateUser(User user);

}
