package com.springmvc.service;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Feedback;

public interface FeedbackService {
    int insertFeedBackInfo(Feedback feedback);

    PageInfo<Feedback> queryFeedBackInfo(int page, int limit);

    int updateFeedbackInfo(Feedback feedback);

}
