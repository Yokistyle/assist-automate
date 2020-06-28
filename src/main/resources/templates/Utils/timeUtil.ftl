
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Unix时间戳(Unix timestamp)转换工具 -  站长工具</title>
    <script>
        var jsurlbase = '//csstools.chinaz.com/tools/js';
        var imgurlbase = '//csstools.chinaz.com/tools/images';
        var styleurlbase = '//csstools.chinaz.com/tools/styles';
    </script>
    <script type="text/javascript" src="//csstools.chinaz.com/common/js/mobilepage.js?v=201702"></script>
    <link rel="stylesheet" type="text/css" href="//csstools.chinaz.com/common/styles/all-base.css?v=201803">
    <link rel="stylesheet" type="text/css" href="//csstools.chinaz.com/common/styles/publicstyle-v2.css?v=201912">
    <link rel="shortcut icon" type="image/ico" href="//img.chinaz.com/favicon.ico">
    <script type="text/javascript" src="//csstools.chinaz.com/common/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="//csstools.chinaz.com/common/js/jq-public.js?v=201708"></script>
    <script type="text/javascript" src="//csstools.chinaz.com/common/layer/layer.js?v=201801"></script>
    <script type="text/javascript" src="//csstools.chinaz.com/tools/js/member.js?v=2020041"></script>
    <!--[if IE 6]>
    <script type="text/javascript" src="//csstools.chinaz.com/common/js/DD_belatedPNG.js"></script>
    <script>    DD_belatedPNG.fix('*');</script>
    <![ENDIF]-->
    <link rel="stylesheet" href="//csstools.chinaz.com/tools/styles/toolstyle.css?v=201608" type="text/css"/><script src="//csstools.chinaz.com/tools/js/jq-tools.js?v=201608" type="text/javascript" charset="gb2312"></script>
</head>

<body>
<!--top-public-begin-->
<div class="ww100">

    <!--ToolHead-begin-->
    <div class="ToolHead">
        <div class="wrapper clearfix">
            <h1 class="ToolLogo fl"><a href="/"><img src="//csstools.chinaz.com/tools/images/public/logos/logo-index.png"></a></h1>
            <div class="fr topTsRight ml10" id="topTxt"></div>
            <div class="fr topTsCenter">
                <script src="//stats.chinaz.com/gj_g/tool_468.js" type="text/javascript"></script>
            </div>
        </div>
    </div>

    <div class="wrapper02 ptb10 ToolsWrapIM clearfix" id="navAfter"></div>                                        <div class="Map-navbar wrapper mb10 clearfix">
    <div class="Mnav-right02 fr" id="loc"></div>
</div>
</div>

<div class="wrapper pt20 pb20">
    <div class="CodingWrap auto">
        <form name="unix">
            <!--CodChangeWrap-begin-->
            <div class="CodChangeWrap clearfix">

                <div class="clearfix bg-blue10 ptb20">
                    <div class="mb20 PresentTxt">
                        <p class="auto w570"><span class="fz16 col-blue02">现在的Unix时间戳(Unix timestamp)是：</span><span class="utspan col-hint" id="currentunixtime"></span><a href="javascript:" id="start">开始</a><a href="javascript:" id="stop">停止</a><a href="javascript:" id="refresh">刷新</a></p>
                    </div>
                    <div class="clearfix miao w80-0" style="margin:0 auto;">
                        <style>
                            .pusmall .miao.w80-0 {
                                width: 87%;
                            }
                        </style>
                        <div class="Iew5 UnTimeW clearfix mb20" style="overflow:visible;margin-bottom:40px;">
                            <div class="clearfix ml20">
                                <div class="PosTxt clearfix">
                                    <label class="YaHei fz14 col-blue02">Unix时间戳（Unix timestamp）</label><input type="text" name="timestamp" id="firstTimestamp" tabindex="1" class="InputTxt w140" size="30" />
                                    <div class="fl lh30 plr5 pr15">
                                        <div class="MainCate-choese _ToolChoese">
                                            <div class="MainCateW-choese pr SearChoeseWrap w55">
                                                <div class="MainCateW-cont SearChoese w45">秒</div>
                                                <input type="hidden" value="0" id="unixtoutc8sel">
                                                <span class="MCicon-drop-down SearChoese"></span>
                                                <ul class="MainCateC-down SearChoese-show w55" style="display: none;">
                                                    <li><a val="0" href="javascript:">秒</a></li>
                                                    <li><a val="1" href="javascript:">毫秒</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="button" value="转换" id="unixtoutc8" tabindex="2" class="InputBtnC col-blue02 plr10 mr20" /><input type="text" name="unixtoutc8result" size="30" class="InputTxt w140" readonly />
                                </div>
                            </div>
                        </div>
                        <div class="Iew5 UnTimeW clearfix mb20" style="overflow:visible;margin-bottom:40px;">
                            <div class="clearfix ml20">
                                <div class="PosTxt clearfix">
                                    <label class="YaHei fz14 col-blue02">时间（年/月/日 时:分:秒）</label><input type="text" name="utc8" id="utc8" tabindex="1" class="InputTxt w140 mr20" size="30" />
                                    <input type="button" value="转换成Unix时间戳" id="utc8tounix1" tabindex="2" class="InputBtnC col-blue02 plr5 mr20  ml10" /><input type="text" name="unixtoutc8result1" size="30" class="InputTxt w140" readonly />
                                    <div class="fl lh30 pl5">
                                        <div class="MainCate-choese _ToolChoese">
                                            <div class="MainCateW-choese pr SearChoeseWrap w55">
                                                <div class="MainCateW-cont SearChoese w45">秒</div>
                                                <input type="hidden" value="0" id="unixtoutc81sel">
                                                <span class="MCicon-drop-down SearChoese"></span>
                                                <ul class="MainCateC-down SearChoese-show w55" style="display: none;">
                                                    <li><a val="0" href="javascript:">秒</a></li>
                                                    <li><a val="1" href="javascript:">毫秒</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="Iew6 UnTimeW clearfix mb20" style="overflow:visible">
                            <div class="clearfix ml20">
                                <div class="ReveTxt clearfix">
                                    <label class="YaHei fz14 col-blue02">时间</label>
                                    <input type="text" class="InputTxt w50" size="2" tabindex="3" name="year" maxlength="4" /><label>年</label>
                                    <input type="text" class="InputTxt w30" size="1" tabindex="4" name="month" maxlength="2" /><label>月</label>
                                    <input type="text" class="InputTxt w30" size="1" tabindex="5" name="day" maxlength="2" /><label>日</label>
                                    <input type="text" class="InputTxt w30" size="1" tabindex="6" name="hour" maxlength="2" /><label>时</label>
                                    <input type="text" class="InputTxt w30" size="1" tabindex="7" name="minute" maxlength="2" /><label>分</label>
                                    <input type="text" class="InputTxt w30" size="1" tabindex="8" name="second" maxlength="2" /><label>秒</label>
                                    <input type="button" value="转换Unix时间戳" id="utc8tounix" tabindex="9" class="InputBtnC col-blue02 plr10 mr20" /><input type="text" name="utc8tounixresult" class="InputTxt w120 fl" size="25" readonly />
                                    <div class="fl lh30 pl5">
                                        <div class="MainCate-choese _ToolChoese">
                                            <div class="MainCateW-choese pr SearChoeseWrap w55">
                                                <div class="MainCateW-cont SearChoese w45">秒</div>
                                                <input type="hidden" value="0" id="utc8tounixsel">
                                                <span class="MCicon-drop-down SearChoese"></span>
                                                <ul class="MainCateC-down SearChoese-show w55" style="display: none;">
                                                    <li><a val="0" href="javascript:">秒</a></li>
                                                    <li><a val="1" href="javascript:">毫秒</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="unixtimeWrap">
                </div>
            </div>
            <!--CodChangeWrap-end-->
        </form>
    </div>
</div>
<!--ToolMain02-end-->
<script>    ted.unixtime.init();</script>
<!--footer-public-begin-->
<div class="wrapper mt10">

    <div id="centerTxt"></div>
    <!--<div class="ToolsWrap" id="centerImg"></div>-->
    <div class="bg-gray02">
        <div class="ToolsImgWrap clearfix">
            <div class="fl mr10 ToolsFive" id="ctImgLeft"></div>
            <div class="fl mr10 ToolsFour" id="ctImgCenter"></div>
            <div class="fl ToolsFive" id="ctImgRight"></div>
        </div>
    </div>
</div>

<div class="wrapper mt10">
    <div class="fotatxtd auto" id="bottomImg"></div>
</div>

<script src="//stats.chinaz.com/gj_g/tool_a.js" type="text/javascript"></script>
<script type="text/javascript" src="//my.chinaz.com/js/uc.js" charset="utf-8"></script>
<div class="backtoTop autohide">
    <div class="toItem"><div class="cont"><a href="//tool.chinaz.com/contact"><div class="side-icon si-feed"></div><div>反馈</div></a></div></div>
    <div class="toItem" id="btntoTop"><div class="cont"><div class="side-icon si-top"></div><div>顶部</div></div></div>
</div>

<div class="autohide">
    <script src='//s11.cnzz.com/stat.php?id=5082706&web_id=5082706' language='JavaScript' charset='gb2312' type="text/javascript"></script>
</div>
<input id="enabled" type="hidden" value="1" />
</body>
</html>