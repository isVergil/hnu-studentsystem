package com.springmvc.dao;

import com.springmvc.entity.Feedback;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("feedbackDao")
public interface FeedbackMapper {
    //插入字典
    int insertFeedbackInfo(Feedback feedback);

    //条件查询 返回分页 Student
    List<Feedback> queryFeedbackInfo();

    int updateFeedbackInfo(Feedback feedback);
}
