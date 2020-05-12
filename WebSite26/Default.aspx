<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            用&nbsp; 户&nbsp; 名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            密&nbsp;&nbsp;&nbsp; 码： 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="登陆" Width="138px" />
&nbsp;<br />
        </div>
        <br />
    </form>
</body>
</html>
