package com.springmvc.dao;

import com.springmvc.entity.Dictionary;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("dictionaryDao")
public interface DictionaryMapper {
    //查找所有的学院
    List<Dictionary> queryDictionaryInfo(@Param("id") Long id, @Param("parentid") Long parentid, @Param("name") String name, @Param("remarks") String remarks);

    //插入字典
    int insertDictionaryInfo(Dictionary dictionary);

    //修改字典
    int updateDictionaryInfo(Dictionary dictionary);
}
