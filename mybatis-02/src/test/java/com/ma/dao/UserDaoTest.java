package com.ma.dao;

import com.ma.pojo.User;
import com.ma.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDaoTest {
    @Test
    public void test(){
        //第一步：获得SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();

        try {
            UserMapper mapper = sqlSession.getMapper(UserMapper.class);
            List<User> userList = mapper.getUserList();

            for(User user : userList){
                System.out.println(user);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            //关闭SqlSession
            sqlSession.close();
        }

    }

}
