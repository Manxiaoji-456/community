package com.kgc.community.mapper;

import com.kgc.community.pojo.ExceptionType;
import com.kgc.community.pojo.ExceptionTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExceptionTypeMapper {
    int countByExample(ExceptionTypeExample example);

    int deleteByExample(ExceptionTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ExceptionType record);

    int insertSelective(ExceptionType record);

    List<ExceptionType> selectByExample(ExceptionTypeExample example);

    ExceptionType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ExceptionType record, @Param("example") ExceptionTypeExample example);

    int updateByExample(@Param("record") ExceptionType record, @Param("example") ExceptionTypeExample example);

    int updateByPrimaryKeySelective(ExceptionType record);

    int updateByPrimaryKey(ExceptionType record);
}