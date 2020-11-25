package com.kgc.community.mapper;

import com.kgc.community.pojo.Rooms;
import com.kgc.community.pojo.RoomsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoomsMapper {
    int countByExample(RoomsExample example);

    int deleteByExample(RoomsExample example);

    int deleteByPrimaryKey(String id);

    int insert(Rooms record);

    int insertSelective(Rooms record);

    List<Rooms> selectByExample(RoomsExample example);

    Rooms selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Rooms record, @Param("example") RoomsExample example);

    int updateByExample(@Param("record") Rooms record, @Param("example") RoomsExample example);

    int updateByPrimaryKeySelective(Rooms record);

    int updateByPrimaryKey(Rooms record);
}