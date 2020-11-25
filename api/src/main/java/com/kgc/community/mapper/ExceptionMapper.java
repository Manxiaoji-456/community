package com.kgc.community.mapper;

import com.kgc.community.pojo.ExceptionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExceptionMapper {
    int countByExample(ExceptionExample example);

    int deleteByExample(ExceptionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Exception record);

    int insertSelective(Exception record);

    List<Exception> selectByExample(ExceptionExample example);

    Exception selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Exception record, @Param("example") ExceptionExample example);

    int updateByExample(@Param("record") Exception record, @Param("example") ExceptionExample example);

    int updateByPrimaryKeySelective(Exception record);

    int updateByPrimaryKey(Exception record);
}