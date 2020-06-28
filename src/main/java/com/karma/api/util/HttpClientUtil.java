package com.karma.api.util;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

/**
 * Create By fumengqi on 2020/6/22
 */
public class HttpClientUtil {
    private static Logger logger = LoggerFactory.getLogger(HttpClientUtil.class);

    //默认字符集
    private static final String ENCODING = "UTF-8";

    /**
     * 短信发送请求
     * @param url
     * @param data
     * @param encoding
     * @return
     */
    public static String mobileCheck(String url, Map<String, String> data, String encoding){
        logger.info("进入post请求方法");
        logger.info("请求入参：URL=" + url);
        logger.info("请求入参：data="+ JSON.toJSONString(data));
        //请求返回结果
        String resultJson = null;
        //创建Client
        CloseableHttpClient httpClient = HttpClients.createDefault();
        //创建httpPost请求
        HttpPost httpPost = new HttpPost();

        try {
            //设置请求地址
            httpPost.setURI(new URI(url));
            //设置实体
            httpPost.setEntity(new StringEntity(JSON.toJSONString(data)));
            //发送请求,返回响应对象
            CloseableHttpResponse response = httpClient.execute(httpPost);
            logger.info("响应结果为："+response.toString());
        } catch (Exception e) {
            logger.info("请求发送失败",e);
        } finally {
            httpPost.releaseConnection();
        }
         return resultJson;
    }
}
