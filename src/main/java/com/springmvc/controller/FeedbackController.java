package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Feedback;
import com.springmvc.entity.User;
import com.springmvc.service.FeedbackService;
import com.springmvc.util.R;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/feedback")
public class FeedbackController {

    //日志
    private static Logger logger = Logger.getLogger(FeedbackController.class);

    //自动装配
    @Autowired
    private FeedbackService feedbackService;

    /**
     * 进入提交反馈页面
     *
     * @return
     */
    @GetMapping("/addPage")
    public String addPage() {
        return "addfeedback";
    }

    @GetMapping("/handlePage")
    public String handlePage() {
        return "handlefeedback";
    }

    /***
     * 提交反馈
     * @return
     */
    @RequestMapping("/add")
    @ResponseBody
    public R addFeedback(@Param(value = "text") String text, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            Feedback feedback = new Feedback(user.getId(), false, text, new Date());
            Integer influenceRows = feedbackService.insertFeedBackInfo(feedback);
            return R.ok(influenceRows.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("增加了一条反馈");
        }
    }

    @RequestMapping("/info")
    @ResponseBody
    public R getInfo(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            PageInfo<Feedback> feedbackPageInfo = feedbackService.queryFeedBackInfo(page, limit);
            return R.ok("成功", feedbackPageInfo.getList());
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            //logger.info("处理了一条反馈");
        }
    }

    @GetMapping("/handle")
    @ResponseBody
    public R handle(@Param(value = "handlerid") Long handlerid, @Param(value = "feedbackid") String id) {
        try {
            Feedback feedback = new Feedback(Long.parseLong(id), null, handlerid, true, null, null, new Date());
            Integer influenceRows = feedbackService.updateFeedbackInfo(feedback);
            return R.ok(influenceRows.toString(), null);
        } catch (NumberFormatException e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("处理了一条反馈");
        }
    }


}
