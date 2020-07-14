<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="StAdmin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/page.css" />
    <title>登录</title>
</head>
<body>
    <form id="form1" runat="server">
    <!-- 登录页面头部 -->
    <div class="logHead">
        <img alt="" src="img/logo.png" />
    </div>
    <!-- 登录页面头部结束 -->
    <!-- 登录body -->
    <div class="logDiv">
        <img class="logBanner" src="img/logBanner.png" />
        <div class="logGet">
            <!-- 头部提示信息 -->
            <div class="logD logDtip">
                <p class="p1">学生登录</p>
            </div>
            <!-- 输入框 -->

            <div class="lgD">
                <img alt="" class="img1" src="img/logName.png" /><asp:TextBox  ID="TBUser" placeholder="输入用户名" runat="server"></asp:TextBox>
            </div>
            <div class="lgD">
                <img alt="" class="img1" src="img/logPwd.png" /><asp:TextBox  ID="TBPassword" placeholder="输入用户密码" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="lgD logD2">
                        <asp:TextBox ID="TBYanZhanMa" class="getYZM" runat="server"></asp:TextBox>
                        <div class="logYZM">
                            <asp:ImageButton ID="ibtn_yzm" class="yzm" runat="server" />
                            <a href="javascript:changeCode()" style="text-decoration: underline; font-size: 10px;">
                                换一张</a>
                            <script type="text/javascript">
                                function changeCode() {
                                    document.getElementById('ibtn_yzm').src = document.getElementById('ibtn_yzm').src + '?';
                                }
                            </script>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>             

            <div class="logC">
                <asp:Button ID="BtDengLu" runat="server" Text="登 录" onclick="BtDengLu_Click" />
            </div>
        </div>
    </div>
    <!-- 登录body  end -->
    <!-- 登录页面底部 -->
    <div class="logFoot">
        <p class="p1">
            版权所有：刘天勇</p>
        <p class="p2">
            刘天勇 
            备案号：冀ICP备  111222333号</p>
    </div>
    <!-- 登录页面底部end -->
    </form>
</body>
</html>
