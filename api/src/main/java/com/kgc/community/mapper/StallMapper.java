package com.kgc.community.mapper;

import com.kgc.community.pojo.Stall;
import com.kgc.community.pojo.StallExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StallMapper {
    int countByExample(StallExample example);

    int deleteByExample(StallExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Stall record);

    int insertSelective(Stall record);

    List<Stall> selectByExample(StallExample example);

    Stall selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Stall record, @Param("example") StallExample example);

    int updateByExample(@Param("record") Stall record, @Param("example") StallExample example);

    int updateByPrimaryKeySelective(Stall record);

    int updateByPrimaryKey(Stall record);
}