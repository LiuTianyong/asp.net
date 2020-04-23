<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户注册<br />
        <br />
        用户名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        密&nbsp; 码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        确认密码：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        出生日期：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="b1" runat="server" Text="提交" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
