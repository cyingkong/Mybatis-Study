import com.ma.dao.BlogMapper;
import com.ma.pojo.Blog;
import com.ma.utils.IDUtils;
import com.ma.utils.MybatisUtils;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.ibatis.cache.Cache;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;


public class MyTest {

    @Test
    public void test(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);

        HashMap map = new HashMap();
//        map.put("title","Java如此简单2");
        map.put("author","狂神说");
//        map.put("id","4c5d401bae1c42c5aa5dfca7103d9e01");
//        map.put("views",9999);

        List<Blog> blogs = mapper.queryBlogIF(map);
        for (Blog blog : blogs) {
            System.out.println(blog);
        }

        sqlSession.close();
    }

    @Test
    public void test2(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BlogMapper mapper = sqlSession.getMapper(BlogMapper.class);

        HashMap map = new HashMap();
        ArrayList<Integer> ids = new ArrayList<Integer>();
        ids.add(1);
        ids.add(2);
        ids.add(3);

        map.put("ids",ids);
        List<Blog> blogs = mapper.queryBlogForeach(map);
        for (Blog blog : blogs) {
            System.out.println(blog);
        }

        sqlSession.close();
    }

}
