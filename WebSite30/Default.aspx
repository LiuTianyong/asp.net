<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 448px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style1" DataKeyNames="StuNo" DataSourceID="SqlDataSource1" Height="184px" Width="800px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" SortExpression="StuNo" />
                <asp:BoundField DataField="StuName" HeaderText="姓名" SortExpression="StuName" />
                <asp:BoundField DataField="StuSex" HeaderText="性别" SortExpression="StuSex" />
                <asp:BoundField DataField="StuAge" HeaderText="年龄" SortExpression="StuAge" />
                <asp:BoundField DataField="StuPolity" HeaderText="政治面貌" SortExpression="StuPolity" />
                <asp:BoundField DataField="StuHome" HeaderText="地址" SortExpression="StuHome" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [StuNo] = @StuNo" InsertCommand="INSERT INTO [Table] ([StuNo], [StuName], [StuSex], [StuAge], [StuPolity], [StuHome]) VALUES (@StuNo, @StuName, @StuSex, @StuAge, @StuPolity, @StuHome)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [StuName] = @StuName, [StuSex] = @StuSex, [StuAge] = @StuAge, [StuPolity] = @StuPolity, [StuHome] = @StuHome WHERE [StuNo] = @StuNo">
            <DeleteParameters>
                <asp:Parameter Name="StuNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StuNo" Type="Int32" />
                <asp:Parameter Name="StuName" Type="String" />
                <asp:Parameter Name="StuSex" Type="String" />
                <asp:Parameter Name="StuAge" Type="String" />
                <asp:Parameter Name="StuPolity" Type="String" />
                <asp:Parameter Name="StuHome" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StuName" Type="String" />
                <asp:Parameter Name="StuSex" Type="String" />
                <asp:Parameter Name="StuAge" Type="String" />
                <asp:Parameter Name="StuPolity" Type="String" />
                <asp:Parameter Name="StuHome" Type="String" />
                <asp:Parameter Name="StuNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
