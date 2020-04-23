<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
    <div>
    
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">[HyperLink1]</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        请选择你日常交通工具<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>电动车</asp:ListItem>
            <asp:ListItem>自行车</asp:ListItem>
            <asp:ListItem>公交车</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:RadioButtonList>
    
    </div>
    </form>
</body>
</html>
