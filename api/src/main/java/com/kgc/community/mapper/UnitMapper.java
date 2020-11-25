package com.kgc.community.mapper;

import com.kgc.community.pojo.Unit;
import com.kgc.community.pojo.UnitExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UnitMapper {
    int countByExample(UnitExample example);

    int deleteByExample(UnitExample example);

    int insert(Unit record);

    int insertSelective(Unit record);

    List<Unit> selectByExample(UnitExample example);

    int updateByExampleSelective(@Param("record") Unit record, @Param("example") UnitExample example);

    int updateByExample(@Param("record") Unit record, @Param("example") UnitExample example);
}