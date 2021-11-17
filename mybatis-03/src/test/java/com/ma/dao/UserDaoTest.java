package com.ma.dao;

import com.ma.pojo.User;
import com.ma.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class UserDaoTest {
    @Test
    public void test(){
        //第一步：获得SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();

        try {
            UserMapper mapper = sqlSession.getMapper(UserMapper.class);
            User user = mapper.getUserById(1);
            System.out.println(user);
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            //关闭SqlSession
            sqlSession.close();
        }

    }

    //select * from mybatis.t_user where user_id = #{id}

    //类型处理器
    //select user_id,user_name,user_pwd as password from mybatis.t_user where user_id = #{id}
}
