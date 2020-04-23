<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 331px">
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server">请输入你的生日</asp:LinkButton>
        <br />
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="114px">
            <asp:ListItem>--选择年份--</asp:ListItem>
        </asp:DropDownList>
&nbsp;年&nbsp; 
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>--选择月份--</asp:ListItem>
        </asp:DropDownList>
&nbsp;月 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="222px">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </asp:Panel>
    </form>
</body>
</html>
