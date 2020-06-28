<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>自动化工具平台</title>
    <link rel="icon" href="../static/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../static/layui/css/admin.css" media="all">
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
</head>
<body class="layui-layout-body">

<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-main">
            <a href="/">
                <img src="../static/img/logo.png" alt="自动化工具平台" style=" max-width: 150px">
            </a>
        </div>
        <ul class="layui-nav layui-layout-left" lay-filter="sidemenu">

            <li class="layui-nav-item">
                <a lay-tips="Unix时间戳转换" lay-href="Utils/timeUtilFtl">Unix时间戳转换</a></dd>
            </li>

            <li class="layui-nav-item">
                <a lay-tips="多库执行SQL" lay-href="sqlexec/connInfoList">多库执行SQL</a>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">环境配置管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a lay-tips="环境配置检测" lay-href="configManage/serviceConfigList">环境配置检测</a></dd>
                    <dd><a lay-tips="服务替换规则管理" lay-href="configManage/ServerProfileConfig">服务替换规则管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">测试辅助工具<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a lay-tips="服务进程与时间管理" lay-href="testTools/ReloadServerUpdateDate">服务进程与时间管理</a></dd>
                    <dd><a lay-tips="Redis数据库管理" lay-href="testTools/RedisServerManage">Redis数据库管理</a></dd>
                    <dd><a lay-tips="数据库结构同步" lay-href="testTools/syncDb">数据库结构同步</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a lay-tips="访问记录" lay-href="accessrecordTest">访问记录展示</a>
            </li>
        </ul>
    </div>

    <!-- 侧边菜单 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="sidemenu">
                <li class="layui-nav-item">
                    <a href="javascript:;">PP越南-MozaDong</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="自动注册" lay-href="MozaDong/RegisterFtl">自动注册</a></dd>
                        <dd><a lay-tips="VTP还款" lay-href="MozaDong/VTPFtl">VTP还款</a></dd>
                        <dd><a lay-tips="小贷回盘消息" lay-href="nplm/loanApp">小贷回盘消息</a></dd>
                        <dd><a lay-tips="结算回盘消息" lay-href="nplm/settle">结算回盘消息</a></dd>
                        <dd><a lay-tips="消金主动还款" lay-href="nplm/active">消金主动还款</a></dd>
                        <dd><a lay-tips="构造逾期数据" lay-href="nplm/overduce">构造逾期数据</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">数据核对</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="核对用例管理" lay-href="/cpms/caseList">核对用例管理</a></dd>
                        <dd><a lay-tips="用例执行结果" lay-href="cpms/resultList">用例结果展示</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">催收系统</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;">催收MQ<span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child" style="padding-left: 20px;">
                                <dd><a lay-tips="结算划扣" lay-href="sendCase/delimitSettle">结算划扣</a></dd>
                                <dd><a lay-tips="贷后回盘" lay-href="sendCase/nplmRepayment">贷后回盘</a></dd>
                                <dd><a lay-tips="贷后划扣" lay-href="sendCase/nplmSendOrder">贷后划扣</a></dd>
                                <dd><a lay-tips="BI预估次数" lay-href="sendCase/hadoopPredict">BI预估划扣次数</a></dd>
                                <dd><a lay-tips="实时结案" lay-href="sendCase/nplmClosecase">贷后实时结案</a></dd>
                                <dd><a lay-tips="结算渠道变更" lay-href="sendCase/settlesRoute">结算渠道变更</a></dd>
                                <dd><a lay-tips="车贷实时结案" lay-href="sendCase/carClosecase">车贷实时结案</a></dd>
                                <dd><a lay-tips="贷后推送客户主动来电信息" lay-href="sendCase/collectionrepaycall">推送客户主动来电</a></dd>
                            </dl>
                        </dd>
                        <dd><a lay-tips="快信测试" lay-href="prepareData/collectionTest">快信测试数据准备</a></dd>
                        <dd><a lay-tips="利信测试" lay-href="prepareData/lixincuiTest">利信测试数据准备</a></dd>
                        <dd><a lay-tips="真量测试" lay-href="prepareData/shouxincuiTest">真量测试数据准备</a></dd>
                        <dd><a lay-tips="直催测试" lay-href="prepareData/firsthandTest">直催测试数据准备</a></dd>
                        <dd><a lay-tips="委外测试" lay-href="prepareData/cdmTest">委外测试数据准备</a></dd>
                        <dd><a lay-tips="车贷测试" lay-href="prepareData/carloanTest">车贷测试数据准备</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">反欺诈系统</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="发送001消息" lay-href="sendCase/sendCase001">发送001消息</a></dd>
                        <dd><a lay-tips="发送002消息" lay-href="sendCase/sendCase002">发送002消息</a></dd>
                        <dd><a lay-tips="发送003消息" lay-href="sendCase/sendCase003">发送003消息</a></dd>
                        <dd><a lay-tips="发送006消息" lay-href="sendCase/sendCase006">发送006消息</a></dd>
                        <dd><a lay-tips="发送007消息" lay-href="sendCase/sendCase007">发送007消息</a></dd>
                        <dd><a lay-tips="发送008消息" lay-href="sendCase/sendCase008">发送008消息</a></dd>
                        <dd><a lay-tips="发送012同行信息" lay-href="sendCase/sendCase012">发送012同行消息</a></dd>
                        <dd><a lay-tips="发送013信息" lay-href="sendCase/sendCase013">发送013消息</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">保险系统</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="模拟支付完成回调" lay-href="insurance/ShowPaidCallbackPage">模拟支付完成回调</a></dd>
                    <#--<dd><a lay-tips="模拟电子投保回调" lay-href="insurance/ShowSMSCallbackPage">模拟电子投保回调</a></dd>-->
                        <dd><a lay-tips="AES加密（ECB模式）" lay-href="insurance/InsuranceAseEcb">AES加密（ECB模式）</a></dd>
                        <dd><a lay-tips="渠道源管理" lay-href="insurance/ChannelDivisionCode">渠道源管理</a></dd>
                        <dd><a lay-tips="配置管理" lay-href="insurance/ViewInsuranceConfiguration">配置管理</a></dd>


                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">资金平台</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="FUNDPT构造放款合同" lay-href="fund/FundContract">FUNDPT构造放款合同</a></dd>
                        <dd><a lay-tips="车金修改联调环境配置" lay-href="fund/updateCJ">车金修改联调环境配置</a></dd>
                        <dd><a lay-tips="消金贷后修改联调配置" lay-href="fund/updateNPLM">消金贷后修改联调配置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">小贷系统</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="旧系统上标" lay-href="loan/LoanUploadOld">旧系统上标</a></dd>
                        <dd><a lay-tips="新系统上标" lay-href="loan/LoanUploadNew">新系统上标</a></dd>
                        <dd><a lay-tips="信息加解密" lay-href="loan/EncryptionAndDecryption">信息转换</a></dd>
                        <dd><a lay-tips="提前结清" lay-href="loan/AdvanceSettle">提前结清</a></dd>
                        <dd><a lay-tips="小贷放款" lay-href="loan/ReleaseLoanFacade">小贷放款</a></dd>
                        <dd><a lay-tips="模拟回盘" lay-href="loan/MockNotice">模拟回盘</a></dd>
                        <dd><a lay-tips="小贷配置" lay-href="loan/LoanTopic">小贷配置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">其他操作</a>
                    <dl class="layui-nav-child">
                        <dd><a lay-tips="合同修改" lay-href="contract/ModificationFile">批量请求URL接口</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <!-- 页面标签 -->
    <div class="layadmin-pagetabs" id="LAY_app_tabs">
        <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-down">
            <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
                <li class="layui-nav-item" lay-unselect="">
                    <a href="javascript:;"></a>
                    <dl class="layui-nav-child layui-anim-fadein layui-anim layui-anim-upbit">
                        <dd id="closeThisTabs"><a href="javascript:;">关闭当前标签页</a></dd>
                        <dd id="closeOtherTabs"><a href="javascript:;">关闭其它标签页</a></dd>
                        <dd id="closeAllTabs"><a href="javascript:;">关闭全部标签页</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div class="layui-tab" lay-allowclose="true" lay-filter="layadmin-layout-tabs">
            <ul class="layui-tab-title" id="LAY_app_tabsheader">
                <li lay-id="nav_0" lay-attr="./index.ftl" class="layui-this">
                    <a class="layui-icon layui-icon-home"></a>
                </li>
            </ul>
            <div class="layui-tab-content" id="LAY_app_body">
                <div class="layui-tab-item layui-show">
                    <iframe src="main" id="nav_0" name="main" class="layadmin-iframe" frameborder="0"
                            style="top:40px;height: 90%;"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="../static/jquery/jquery-1.9.1.min.js"></script>
<script src="../static/layui/layui.all.js" charset="utf-8"></script>

<script>
    var $ = layui.jquery
            , element = layui.element;

    function showmain() {
        var week = new Date().getDay();
    <#--
    http://magickeyboard.io/  魔幻键盘
    http://www.staggeringbeauty.com/ 时空虫子
    http://www.lookingatsomething.com/ 晴雨表
    http://www.trashloop.com/  倔强的垃圾桶
    http://weavesilk.com/  魔幻绘画
    http://www.sketchswap.com/  一画换一画
    -->
        if (week === 2) {
            $("#nav_0", parent.document.body).attr("src", "http://www.staggeringbeauty.com/")
        } else if (week === 3) {
            $("#nav_0", parent.document.body).attr("src", "http://www.lookingatsomething.com/")
        } else if (week === 4) {
            $("#nav_0", parent.document.body).attr("src", "http://weavesilk.com/")
            // $("#nav_0",parent.document.body).attr("src","http://www.trashloop.com/")
        } else if (week === 5) {
            $("#nav_0", parent.document.body).attr("src", "http://www.sketchswap.com/")
        } else if (week === 6 || week === 0) {
            $("#nav_0", parent.document.body).attr("src", "/main")
        }
    }

    //触发事件
    var active = {
        tabAdd: function (othis) {
            //新增一个Tab项
            element.tabAdd('layadmin-layout-tabs', {
                title: othis.attr("lay-tips") //用于演示
                ,
                attr: othis.attr("lay-href")
                ,
                id: othis.attr("lay-href")
                ,
                content: '<iframe src="' + othis.attr("lay-href") + '" id="' + othis.attr("lay-href") + '" name="' + othis.attr("lay-href") + '"  class="layadmin-iframe" frameborder="0" style="top:40px;height: 90%;"></iframe>'
            });
        }
        , tabDelete: function (othis) {
            //删除指定Tab项
            element.tabDelete('layadmin-layout-tabs', othis.attr("lay-id"));
        }
        , tabChange: function (othis) {
            //切换到指定Tab项
            $(".layui-show").removeClass("layui-show");
            element.tabChange('layadmin-layout-tabs', othis.attr("lay-href"));
        }
    };

    element.on('nav(sidemenu)', function (elem) {
        if (elem[0].childElementCount == 0) {
            if ($(".layui-tab-title li[lay-attr]").length <= 0) {
                active.tabAdd(elem);
            } else {
                var isData = false;
                $.each($(".layui-tab-title li[lay-attr]"), function () {
                    if ($(this).attr("lay-attr") == elem.attr("lay-href")) {
                        isData = true;
                    }
                });
                if (isData == false) {
                    active.tabAdd(elem);
                }
                active.tabChange(elem);
            }
        }
    });

    $(".layui-icon-prev").click(function () {
        var prev = $(".layui-tab-title").children(".layui-this").prev();
        if (prev.attr("lay-id") != undefined) {
            $(".layui-show").removeClass("layui-show");
            element.tabChange('layadmin-layout-tabs', prev.attr("lay-id"));
        }
    });

    $(".layui-icon-next").click(function () {
        var next = $(".layui-tab-title").children(".layui-this").next();
        if (next.attr("lay-id") != undefined) {
            $(".layui-show").removeClass("layui-show");
            element.tabChange('layadmin-layout-tabs', next.attr("lay-id"));
        }
    });

    $("#closeThisTabs").click(function () {
        var now = $(".layui-tab-title").children(".layui-this");
        if (now.attr("lay-id") != "nav_0") {
            active.tabDelete(now);
        }
    });

    $("#closeOtherTabs").click(function () {
        $(".layui-tab-title").children("li").each(function () {
            if ($(this).attr("class") != "layui-this" && $(this).attr("lay-id") != "nav_0") {
                active.tabDelete($(this));
            }
        });
    });

    $("#closeAllTabs").click(function () {
        $(".layui-tab-title").children("li").each(function () {
            if ($(this).attr("lay-id") != "nav_0") {
                active.tabDelete($(this));
            }
        });
    });

</script>
</body>
</html>