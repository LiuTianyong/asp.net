<%@ Page Title="" Language="C#" MasterPageFile="MasterPageRight.master" AutoEventWireup="true" CodeFile="StudentXinXi.aspx.cs" Inherits="NYAdmin_ChanPinGuanLi" %>


<asp:Content ID="head1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="pageAll">
        <div class="pageTop">
            <div class="page">
                <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a href="#">学生管理</a>&nbsp;-</span>&nbsp;学生信息管理
            </div>
        </div>
        <div class="page">
        <div class="cfD">
                <asp:Button ID="BtDaoChu" class="button" runat="server" Text="学生信息导出" onclick="BtDaoChu_Click" 
                     />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a  href="../attached/SXX.xls" class="button-2">下载学生信息文件</a>
            </div>
            <!-- user页面样式 -->
            <div class="connoisseur">
                <!-- user 表格 显示 -->
                <div class="conShow">
                    <table border="1" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="66px" class="tdColor tdC">
                                序号
                            </td>
                            <td width="66px" class="tdColor">
                                班级
                            </td>
                            <td width="70px" class="tdColor">
                                姓名
                            </td>
                            <td width="70px" class="tdColor">
                                民族
                            </td>
                            <td width="180px" class="tdColor">
                                籍贯
                            </td>
                            <td width="80px" class="tdColor">
                                身份证号
                            </td>
                            <td width="70px" class="tdColor">
                                生日
                            </td>
                            <td width="80px" class="tdColor">
                                入党时间
                            </td>
                            <td width="80px" class="tdColor">
                                手机号
                            </td>
                            <td width="100px" class="tdColor">
                                家庭住址
                            </td>
                            <td width="60px" class="tdColor">
                                性别
                            </td>
                            <td width="80px" class="tdColor">
                                政治面貌
                            </td>
                            <td width="60px" class="tdColor">
                                年级
                            </td>
                            <td width="66px" class="tdColor">
                                信息修改
                            </td>
                        </tr>
                        <asp:Repeater ID="RpChanPin" OnItemCommand="RpChanPin_ItemCommand" runat="server"><%-- OnItemCommand="RpChanPin_ItemCommand"--%>
                            <ItemTemplate>
                                <tr height="40px">
                                    <td>
                                        <%#Eval("id")%>
                                    </td>                                    
                                    <td>
                                        <%#Eval("BanJi") %>
                                    </td>
                                    <td>
                                        <%#Eval("XingMing")%>
                                    </td>                                    
                                    <td>
                                        <%#Eval("MinZu") %>
                                    </td>
                                    <td>
                                        <%#Eval("JiGuan")%>
                                    </td>                                    
                                    <td>
                                        <%#Eval("ShenFenZhengHao") %>
                                    </td>
                                    <td>
                                        <%#Eval("ShengRi")%>
                                    </td>                                    
                                    <td>
                                        <%# Convert.ToDateTime(Eval("RuDangShiJian")).ToString("yyyy-MM-dd")%>
                                    </td>
                                    <td>
                                        <%#Eval("ShouJiHao")%>
                                    </td>                                    
                                    <td>
                                        <%#Eval("JiaTingDiZhi") %>
                                    </td>
                                    <td>
                                        <%#Eval("XingBie")%>
                                    </td>                                    
                                    <td>
                                        <%#Eval("ZhengZhiMianMao") %>
                                    </td>
                                    <td>
                                        <%#Eval("NianJi")%>
                                    </td>                                   
                                    <td>
                                        <asp:LinkButton ID="LBChongZhi" runat="server" Text="信息修改" CommandName='Update' CommandArgument='<%# Eval("id")%>' >
                                        <img class="operation delban" src="img/update.png"></asp:LinkButton>
                                    </td>
                                   <%-- <td>
                                        <asp:LinkButton ID="btnDelete" runat="server" Text="删除" CommandName='Delete' CommandArgument='<%# Eval("id") %>'  OnClientClick='return confirm("确定要删除吗?删除后无法恢复！")'>
                                        <img class="operation delban" src="img/delete.png"></asp:LinkButton>
                                    </td>--%>
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
