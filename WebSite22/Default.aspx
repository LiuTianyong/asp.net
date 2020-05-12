<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">输入出生日期</asp:LinkButton>
        <br />
        <div>
    
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="Drop_SelectedIndexChanged">
                <asp:ListItem>--选择年份--</asp:ListItem>
            </asp:DropDownList>
&nbsp;年&nbsp;&nbsp; 
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="Drop_SelectedIndexChanged">
                <asp:ListItem>--选择月份--</asp:ListItem>
            </asp:DropDownList>
    
    </div>
        <p>
            你生日是 ：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="241px">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </asp:Panel>
    </form>
</body>
</html>
