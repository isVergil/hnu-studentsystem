package com.springmvc.service;

import com.springmvc.entity.Dictionary;

import java.util.List;

public interface DictionaryService {
    //查找所有的学院
    List<Dictionary> queryDictionaryInfo(Long id, Long parentid, String name, String remarks);

    //插入字典数据
    int insertDictionaryInfo(Dictionary dictionary);

    //修改字典
    int updateDictionaryInfo(Dictionary dictionary);
}
