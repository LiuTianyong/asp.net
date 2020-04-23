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
    
        新密码：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        请再次输入：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="两次密码输入不一致" SetFocusOnError="True"></asp:CompareValidator>
        <br />
        <br />
        日期：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="TextBox4" ErrorMessage="日期格式不正确" Operator="DataTypeCheck"></asp:CompareValidator>
        <br />
        <br />
        年龄：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox3" ErrorMessage="年龄不能小于18岁" Operator="GreaterThanEqual" SetFocusOnError="True" Type="Integer" ValueToCompare="18"></asp:CompareValidator>
    
    </div>
    </form>
</body>
</html>
