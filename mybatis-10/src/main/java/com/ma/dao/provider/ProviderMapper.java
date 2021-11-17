package com.ma.dao.provider;

import com.ma.pojo.Provider;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author ASUS
 */
public interface ProviderMapper {
    //增加用户信息
    public int add(Provider provider) throws Exception;

    //通过条件查询-providerList
    public List<Provider> getProviderList(@Param("proName") String proName,@Param("proCode") String proCode,
                                          @Param("from") Integer currentPageNo,@Param("pageSize") Integer pageSize) throws Exception;

    //获取供应商列表
    public List<Provider> getProList() throws Exception;

    //通过条件查询-供应商表记录数
    public int getProviderCount(@Param("proName") String proName,@Param("proCode") String proCode) throws Exception;

    //通过供应商id删除供应商信息
    public int deleteProviderById(@Param("id") Integer delId) throws Exception;

    //根据provider id 获取供应商信息
    public Provider getProviderById(@Param("id") Integer id) throws Exception;

    //修改供应商
    public int modify(Provider provider) throws Exception;

}
