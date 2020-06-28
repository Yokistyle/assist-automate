package com.karma.api.controller;

import com.karma.api.util.HttpClientUtil;
import com.karma.api.util.ResultMap;
import com.karma.api.util.UrlList;
import com.karma.api.util.Zuid;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Create By fumengqi on 2020/6/21
 */
@Controller
@RequestMapping("/MozaDong")
public class MozaController {

    private static Logger logger = LoggerFactory.getLogger(MozaController.class);

    private static final String Base_Path = "/Moza";

    /**
     * 侧边栏点击项目跳转
     * @return
     */
    @RequestMapping(method = RequestMethod.GET,value = "/RegisterFtl")
    public String getfile(){
        logger.info("自动注册页面跳转成功");
        return Base_Path+"/register";
    }
    @RequestMapping(method = RequestMethod.GET,value = "/VTPFtl")
    public String getVTP(){
        logger.info("VTP还款页面跳转成功");
        return Base_Path+"/VTP";
    }


    /**
     * 发送短信-获取短信codeToken
     * @param request
     * @return
     */
    @RequestMapping(method = RequestMethod.POST,value = "/register")
    public ResultMap mozaRegister(HttpServletRequest request, String response){
        String url = null;
        //环境判断
        if(request.getParameter("envo")=="1"){
            url = UrlList.Moza_debug_MobileCheck.url;
            logger.info("注册环境为：测试环境");
        } else {
            url = UrlList.Moza_debugonline_MobileCheck.url;
            logger.info("注册环境为：生产环境");
        }

        String phone = request.getParameter("Phone");
        String zuid = Zuid.getCharAndNum();
        String userGid = null;

        //返回页面信息
        ResultMap resultMap = null;
        //返回页面注册成功的账号
        List<String> resultList = new ArrayList<>();


        if(!"".equals(phone)&&phone!=null){ //账号非空判断
            String[] Phones = phone.split("[\\s+\\,]");///字符拆分，去掉空格和逗号

            Map<String,String> res = new HashMap<>();
            res.put("mobile",phone);
            res.put("userGid",userGid);
            res.put("zuid",zuid);
            JSONObject data = JSONObject.fromObject(res);
            logger.info("请求参数"+res);

            response = HttpClientUtil.mobileCheck(url,res,"Utf-8");//调用http发送请求


        }else {
            resultMap.setCode(0);
            resultMap.setMessage("账号不能为空");
        }
        if(!resultList.isEmpty()){
            resultMap.setData(resultList);
            logger.info("注册成功的账号为："+resultList);
        }
        return resultMap;
    }

    @RequestMapping(method = RequestMethod.GET,value = "/VTP")
    public String mozaVTP(){
        return null;
    }
}
