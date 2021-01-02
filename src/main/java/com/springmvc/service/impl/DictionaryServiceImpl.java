package com.springmvc.service.impl;

import com.springmvc.dao.DictionaryMapper;
import com.springmvc.entity.Dictionary;
import com.springmvc.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("dictionaryService")
public class DictionaryServiceImpl implements DictionaryService {
    //自动装配
    @Autowired
    private DictionaryMapper dictionaryDao;

    //查找所有的学院
    @Override
    public List<Dictionary> queryDictionaryInfo(Long id, Long parentid, String name, String remarks) {
        List<Dictionary> list = dictionaryDao.queryDictionaryInfo(id, parentid, name, remarks);
        return list;
    }

    @Override
    public int insertDictionaryInfo(Dictionary dictionary) {
        int influenceCount = dictionaryDao.insertDictionaryInfo(dictionary);
        return influenceCount;
    }

    @Override
    public int updateDictionaryInfo(Dictionary dictionary) {
        int influenceCount = dictionaryDao.updateDictionaryInfo(dictionary);
        return influenceCount;
    }
}
