package com.ma.dao;

import com.ma.pojo.Blog;

import java.util.List;
import java.util.Map;

/**
 * @author ASUS
 */
public interface BlogMapper {
    //插入数据
    int addBlog(Blog blog);

    //查询博客
    List<Blog> queryBlogIF(Map map);

    List<Blog> queryBlogChoose(Map map);

    //更新博客
    int updateBlog(Map map);

    //查询第1-2-3号博客的记录
    List<Blog> queryBlogForeach(Map map);

}
