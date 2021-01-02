package com.springmvc.dao;

import com.springmvc.entity.Feedback;
import org.springframework.stereotype.Component;

@Component("feedbackDao")
public interface FeedbackMapper {
    //插入字典
    int insertFeedbackInfo(Feedback feedback);

    //修改字典
    int updateFeedbackInfo(Feedback feedback);
}
