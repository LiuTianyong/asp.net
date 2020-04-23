<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style6 {
            width: 340px;
            text-align: left;
        }
        .auto-style7 {
            height: 24px;
            text-align: left;
            width: 340px;
        }
        .auto-style8 {
            width: 452px;
        }
        .auto-style10 {
            width: 340px;
            height: 27px;
            text-align: left;
        }
        .auto-style11 {
            height: 27px;
        }
        .auto-style12 {
            height: 24px;
            text-align: left;
            width: 452px;
        }
        .auto-style13 {
            width: 452px;
            height: 27px;
            text-align: left;
        }
        .auto-style14 {
            width: 452px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div class="auto-style1">
            <strong><span class="auto-style2">个人情况调查表</span><br class="auto-style2" />
            </strong>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">姓名&nbsp; 
                    <input id="Text1" type="text" /></td>
                <td class="auto-style12">性别 <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1" Text="男" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" Text="女" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style10">你喜欢的歌手</td>
                <td class="auto-style13">
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="23px" Rows="1">
                        <asp:ListItem>徐良</asp:ListItem>
                        <asp:ListItem>许嵩</asp:ListItem>
                        <asp:ListItem>周杰伦</asp:ListItem>
                        <asp:ListItem>韩红</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style6">你家住在哪里</td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="327px">
                        <asp:ListItem>北京</asp:ListItem>
                        <asp:ListItem>上海</asp:ListItem>
                        <asp:ListItem>天津</asp:ListItem>
                        <asp:ListItem>其他城市</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">你的爱好</td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" Width="329px">
                        <asp:ListItem>足球</asp:ListItem>
                        <asp:ListItem>乒乓球</asp:ListItem>
                        <asp:ListItem>网球</asp:ListItem>
                        <asp:ListItem>音乐</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="提交" Width="99px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
