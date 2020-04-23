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
    
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
            <asp:ListItem>少年</asp:ListItem>
            <asp:ListItem>青花瓷</asp:ListItem>
            <asp:ListItem>惊雷</asp:ListItem>
            <asp:ListItem>红豆</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
&nbsp;&nbsp; 你喜欢的音乐有：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>沙漠</asp:ListItem>
            <asp:ListItem>沙漠2</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="189px" Width="250px" ImageUrl="~/image/shamo.jpg" />
&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
