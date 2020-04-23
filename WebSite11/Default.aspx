<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1280px;
            height: 719px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" />
        <img alt="" class="auto-style1" src="img/01240b58102fe8a84a0d304f0b037c.png@1280w_1l_2o_100sh.png" /></div>
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="id1" OnCheckedChanged="RadioButton1_CheckedChanged" Text="男" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="id1" Text="女" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
