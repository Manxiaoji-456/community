package com.kgc.community.mapper;

import com.kgc.community.pojo.Bulletin;
import com.kgc.community.pojo.BulletinExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BulletinMapper {
    int countByExample(BulletinExample example);

    int deleteByExample(BulletinExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Bulletin record);

    int insertSelective(Bulletin record);

    List<Bulletin> selectByExample(BulletinExample example);

    Bulletin selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Bulletin record, @Param("example") BulletinExample example);

    int updateByExample(@Param("record") Bulletin record, @Param("example") BulletinExample example);

    int updateByPrimaryKeySelective(Bulletin record);

    int updateByPrimaryKey(Bulletin record);
}