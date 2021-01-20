package com.springmvc.controller;

import com.github.pagehelper.PageInfo;
import com.springmvc.entity.Dictionary;
import com.springmvc.entity.Log;
import com.springmvc.service.DictionaryService;
import com.springmvc.util.R;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/dictionary")
public class DictionaryController {
    //日志
    private static Logger logger = Logger.getLogger(DictionaryController.class);

    //自动装配
    @Autowired
    private DictionaryService dictionaryService;



    //查找所有的日志
    @RequestMapping("/loginfo")
    @ResponseBody
    public R getLogInfo(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer limit) {
        try {
            PageInfo<Log> feedbackPageInfo = dictionaryService.queryLogInfo(page, limit);
            return R.ok("成功", feedbackPageInfo.getList());
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            //logger.info("处理了一条反馈");
        }
    }

    /**
     * 进入数据字典页面
     *
     * @return
     */
    @GetMapping("/infoPage")
    public String dictionaryIndex() {
        return "dictionary";
    }

    /**
     * 进入新增字典页面  传参数id
     *
     * @param model
     * @param parentid
     * @param parentname
     * @return
     */
    @GetMapping("/addPage")
    public String addPagByDictionaryId(Model model, @Param("parentid") Long parentid, @Param("parentname") String parentname) {
        model.addAttribute("parentid", parentid);
        model.addAttribute("parentname", parentname);
        return "adddictionary";
    }

    /**
     * 进入编辑字典页面  传字典所有参数
     *
     * @param model
     * @param id
     * @param parentid
     * @param name
     * @param remarks
     * @return
     */
    @GetMapping("/editPage")
    public String addPagByDictionaryId(Model model, @Param("id") Long id, @Param("parentid") Long parentid, @Param("name") String name, @Param("remarks") String remarks) {
        model.addAttribute("id", id);
        model.addAttribute("parentid", parentid);
        model.addAttribute("name", name);
        model.addAttribute("remarks", remarks);
        return "editdictionary";
    }

    /**
     * 插入字典
     *
     * @param dictionary
     * @return
     */
    @PostMapping("add")
    @ResponseBody
    public R addDictionaryData(@RequestBody Dictionary dictionary) {
        try {
            Integer influenceCount = dictionaryService.insertDictionaryInfo(dictionary);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("新增了一条日志数据");
        }
    }

    @PostMapping("edit")
    @ResponseBody
    public R editDictionaryData(@RequestBody Dictionary dictionary) {
        try {
            Integer influenceCount = dictionaryService.updateDictionaryInfo(dictionary);
            return R.ok(influenceCount.toString(), null);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            logger.info("修改了一条日志数据");
        }
    }

    /**
     * 下拉框-获取字典数据
     *
     * @param id
     * @param parentid
     * @param name
     * @param remarks
     * @return
     */
    @GetMapping("/getData")
    @ResponseBody
    public R getAcademyDeptClassData(@RequestParam(value = "id", required = false) Long id, @RequestParam(value = "parentid", required = false) Long parentid, @RequestParam(value = "name", required = false) String name, @RequestParam(value = "remarks", required = false) String remarks) {
        try {
            List<Dictionary> dictionaryList = dictionaryService.queryDictionaryInfo(id, parentid, name, remarks);
            return R.ok("成功", dictionaryList);
        } catch (Exception e) {
            logger.error(e.toString());
            return R.fail("失败");
        } finally {
            //todo 操作日志
        }
    }

}
