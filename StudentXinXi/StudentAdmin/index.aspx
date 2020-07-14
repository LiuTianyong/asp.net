<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="NYAdmin_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
    <title>后台首页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="head">
        <div class="headL">
            <img alt="" class="headLogo" src="../img/logo.png" height="50px" />
        </div>
        <div class="headR">
            <p class="p1">
                欢迎管理员：<%=Session["UserName"]%>
            </p>
            <p class="p2">
                <asp:Button ID="BtTuiChu" class="goOut" runat="server" Text="退出" BorderStyle="None"  OnClick="BtTuiChu_Click" />
            </p>
        </div>
    </div>

    <div class="NeiRong">
        <div class="container">
            <div class="leftsidebar_box">
                <a href="main.html" target="main">
                    <div class="line">
                        <img alt="" src="img/coin01.png" />&nbsp;&nbsp;首页
                    </div>
                </a>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin03.png" />
                        <img class="icon2" src="img/coin04.png" />
                        学生管理
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a class="cks" href="StudentZhangHao.aspx" target="main">学生帐号管理</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a class="cks" href="StudentXinXi.aspx" target="main">学生信息管理</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a class="cks" href="StudentZhangHaoShengCheng.aspx" target="main">学生帐号生成</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
                <%--<dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin05.png" />
                        <img class="icon2" src="img/coin06.png" />
                        产品管理
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a class="cks" href="ChanPinLeiBei.aspx" target="main">产品类别</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a class="cks" href="AddChanPin.aspx" target="main">产品添加</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a class="cks" href="ChanPinGuanLi.aspx" target="main">产品管理</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin11.png" />
                        <img class="icon2" src="img/coin12.png" />
                        新闻管理
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="AddNews.aspx" target="main" class="cks">新闻添加</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="NewsGuanLi.aspx" target="main" class="cks">新闻管理</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin15.png" />
                        <img class="icon2" src="img/coin16.png" />
                        公司活动
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="AddHongDong.aspx" target="main" class="cks">公司活动</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="HuoDongGuanLi.aspx" target="main" class="cks">公司管理</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin07.png" />
                        <img class="icon2" src="img/coin08.png" />
                        招商加盟
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="ZhaoShangJiaMeng.aspx" target="main" class="cks">招商加盟</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin10.png" />
                        <img class="icon2" src="img/coin09.png" />
                        招贤纳士
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="ZhaoXianNaShi.aspx" target="main" class="cks">招贤纳士</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coin17.png" />
                        <img class="icon2" src="img/coin18.png" />
                        公司详情
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="GongSiXinXi.aspx" target="main" class="cks">公司详情</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>--%>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="img/coinL1.png" />
                        <img class="icon2" src="img/coinL2.png" />
                        系统管理
                        <img class="icon3" src="img/coin19.png" />
                        <img class="icon4" src="img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="ChangePwd.aspx" target="main" class="cks">修改密码</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="img/coin111.png" />
                        <img class="coin22" src="img/coin222.png" />
                        <a href="GuanLIYuanZhangHao.aspx" target="main" class="cks">添加管理员</a>
                        <img class="icon5" src="img/coin21.png" />
                    </dd>
                </dl>
            </div>
        </div>
        <div class="rightbox">
            <iframe scrolling="no"  name="main" frameborder="0" src="main.html" 
            onload="this.height=0;this.width=document.body.clientWidth - 240;   var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>700?fdh:700); "></iframe>
        </div>
    </div>

    </form>
</body>
</html>
