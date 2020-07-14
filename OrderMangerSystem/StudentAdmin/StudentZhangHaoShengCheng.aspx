<%@ Page Title="" Language="C#" MasterPageFile="MasterPageRight.master" AutoEventWireup="true" CodeFile="StudentZhangHaoShengCheng.aspx.cs" Inherits="NYAdmin_ChanPinGuanLi" %>


<asp:Content ID="head1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="pageAll">
        <div class="pageTop">
            <div class="page">
                <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a href="#">学生管理</a>&nbsp;-</span>&nbsp;学生帐号管理
            </div>
        </div>
        <div class="page">
            <!-- user页面样式 -->
            <div class="cfD">
                <asp:TextBox ID="TBShuLiang" class="addUser"  placeholder="输入生成帐号数量" runat="server"></asp:TextBox><%--<asp:CompareValidator
                    ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>--%>
                <asp:Button ID="BtShengCheng" class="button" runat="server" Text="生成" 
                    onclick="BtShengCheng_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtDaoChu" class="button" runat="server" Text="学生帐号导出" onclick="BtDaoChu_Click" 
                     />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a  href="../attached/SZH.xls" class="button-1">下载学生帐号文件</a>           

            </div>

            <div class="connoisseur">
                <!-- user 表格 显示 -->
                <div class="conShow">
                    <table border="1" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="150px" class="tdColor tdC">
                                序号
                            </td>
                            <td width="200px" class="tdColor">
                                帐号
                            </td>                            
                            <td width="200px" class="tdColor">
                                帐号删除
                            </td>
                        </tr>
                        <asp:Repeater ID="RpChanPin" runat="server" OnItemCommand="RpChanPin_ItemCommand">
                            <ItemTemplate>
                                <tr height="40px">
                                    <td>
                                        <%#Eval("id")%>
                                    </td>                                    
                                    <td>
                                        <%#Eval("ZhangHao") %>
                                    </td>                                    
                                    <td>
                                        <asp:LinkButton ID="btnDelete" runat="server" Text="删除" CommandName='Delete' CommandArgument='<%# Eval("id") %>'  OnClientClick='return confirm("确定要删除吗?删除后无法恢复！")'>
                                        <img class="operation delban" src="img/delete.png"></asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                    <div class="f_pageH">
                        <ul>
                            <li class="f_s1">
                                <asp:Label ID="lblCurrentPage" runat="server" Text="Label"></asp:Label>
                                /共<asp:Label ID="labPage" runat="server" Text="Label"></asp:Label>
                                页 </li>
                            <li class="f_s2">
                                <asp:HyperLink ID="first" runat="server">首页</asp:HyperLink></li>
                            <li class="f_s2">
                                <asp:HyperLink ID="next" runat="server">下一页</asp:HyperLink></li>
                            <li class="f_s2">
                                <asp:HyperLink ID="up" runat="server">上一页</asp:HyperLink></li>
                            <li class="f_s2">
                                <asp:HyperLink ID="last" runat="server">末页</asp:HyperLink></li>
                        </ul>
                    </div>
                </div>
            <!-- user页面样式end -->
        </div>
    </div>
    </div>
</asp:Content>
