<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 173px;
        }
        .auto-style2 {
            width: 339px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="2">员工查询系统</td>
            </tr>
            <tr>
                <td class="auto-style1">部门：<asp:DropDownList ID="DropUnit" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropUnit_SelectedIndexChanged">
                    <asp:ListItem>教务处</asp:ListItem>
                    <asp:ListItem>学生处</asp:ListItem>
                    <asp:ListItem>科研处</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">姓名：<asp:DropDownList ID="DropName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_SelectedIndexChanged">
                    <asp:ListItem>张三</asp:ListItem>
                    <asp:ListItem>李四</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:CheckBoxList ID="CheckDisplay" runat="server" AutoPostBack="True" Height="35px" RepeatDirection="Horizontal" Width="417px">
                        <asp:ListItem>住址</asp:ListItem>
                        <asp:ListItem>电话</asp:ListItem>
                        <asp:ListItem>学历</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
    </div>
    </form>
</body>
</html>
