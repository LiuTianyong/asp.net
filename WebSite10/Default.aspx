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
    
        <asp:Label ID="LabelNumer1" runat="server" Text="Label"></asp:Label>
&nbsp; +&nbsp;&nbsp;
        <asp:Label ID="LabelNumer2" runat="server" Text="Label"></asp:Label>
&nbsp;=&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="结束" />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelList" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelMsg" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
