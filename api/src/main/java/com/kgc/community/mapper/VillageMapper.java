package com.kgc.community.mapper;

import com.kgc.community.pojo.Village;
import com.kgc.community.pojo.VillageExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VillageMapper {
    int countByExample(VillageExample example);

    int deleteByExample(VillageExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Village record);

    int insertSelective(Village record);

    List<Village> selectByExample(VillageExample example);

    Village selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Village record, @Param("example") VillageExample example);

    int updateByExample(@Param("record") Village record, @Param("example") VillageExample example);

    int updateByPrimaryKeySelective(Village record);

    int updateByPrimaryKey(Village record);
}