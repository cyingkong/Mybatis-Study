package com.ma.dao;

import com.ma.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * @author ASUS
 */
public interface UserMapper {

    @Select("select * from t_user")
    List<User> getUsers();

    //方法存在多个参数，所有的参数前面必须加上@Param注解
    @Select("select * from t_user where user_id = #{id}")
    User getUserById(@Param("id") int id);

    @Insert("insert into t_user(user_id,user_name,user_pwd) values (#{user_id},#{user_name},#{password})")
    int addUser(User user);

    @Update("update t_user set user_name=#{user_name},user_pwd=#{password} where user_id=#{user_id}")
    int upDateUser(User user);

    @Delete("delete from t_user where user_id = #{id}")
    int deleteUser(@Param("id")int id);
}
