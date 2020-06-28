package com.karma.api.util;

/**
 * Create By fumengqi on 2020/6/22
 */
public enum UrlList{
    //--------------------------------------------------测试环境--------------------------------------------------
    //MozaDong
    Moza_debug_MobileCheck(1,"https://pyrd.mozadong.com/harbor/varanus/userinfo/mobilecheckzuid?ek=1&t=&u=&c=2&b=12&bl=en_US"),
    Moza_debug_VerifyCode(2,"https://pyrd.mozadong.com/harbor/varanus/userinfo/verifycode?ek=1&t=&u=&c=2&b=12&bl=en_US"),

    //--------------------------------------------------生产环境--------------------------------------------------
    Moza_debugonline_MobileCheck(3,"https://pyrd.mozadong.com/harbor/varanus/userinfo/mobilecheckzuid?ek=1&t=&u=&c=2&b=12&bl=en_US");

    private static String test;
    public int index;
    public String url;

    private UrlList(int index,String url){
        this.index = index;
        this.url = url;
    }

    public static String getTest() {
        return test;
    }

    public static void setTest(String test) {
        UrlList.test = test;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
