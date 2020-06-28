package com.karma.api.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Create By fumengqi on 2020/6/23
 */
@Controller
@RequestMapping("/Utils")
public class UtilsController {
    private static Logger logger = LoggerFactory.getLogger(MozaController.class);

    @RequestMapping(method = RequestMethod.GET,value = "/timeUtilFtl")
    public String getfile(){
        logger.info("自动注册页面跳转成功");
        return "/Utils/timeUtil";
    }
}
