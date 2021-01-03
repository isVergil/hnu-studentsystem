package com.springmvc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springmvc.dao.FeedbackMapper;
import com.springmvc.entity.Feedback;
import com.springmvc.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("feedbackService")
public class FeedbackServiceImpl implements FeedbackService {
    //自动装配
    @Autowired
    private FeedbackMapper feedbackDao;

    @Override
    public int insertFeedBackInfo(Feedback feedback) {
        return feedbackDao.insertFeedbackInfo(feedback);
    }

    @Override
    public PageInfo<Feedback> queryFeedBackInfo(int page, int limit) {
        //传入参数，每页页数，当前页
        PageHelper.startPage(page, limit);
        List<Feedback> list = feedbackDao.queryFeedbackInfo();
        //通过包装获取分页需要的其他值信息
        PageInfo<Feedback> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public int updateFeedbackInfo(Feedback feedback) {
        return feedbackDao.updateFeedbackInfo(feedback);
    }
}
