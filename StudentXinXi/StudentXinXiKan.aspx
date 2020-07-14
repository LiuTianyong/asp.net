<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRight.master" AutoEventWireup="true" CodeFile="StudentXinXiKan.aspx.cs" Inherits="NYAdmin_GongSiXinXi" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">学生信息</a>&nbsp;</span>
			</div>
		</div>
		<div class="page ">
			<div class="banneradd bor">
				<div class="baTopNo">
					<span>学生信息录入、修改</span>
				</div>
				<div class="baBody">
                    
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;班级：
                        <input type="text" class="input3" name="BanJi" disabled="disabled" value="<%=BanJi%>"/>
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：<input type="text"  class="input3" name="XingMing" disabled="disabled" value="<%=XingMing%>"/>
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 民族：<input type="text" class="input3" name="MinZu" disabled="disabled" value="<%=MinZu%>" />
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;籍贯：<input type="text" class="input4" name="JiGuan" disabled="disabled" value="<%=JiGuan%>"/>
					</div>
                    <div class="bbD">
						身份证号：<input type="text" class="input3" name="ShenFenZhengHao" disabled="disabled" value="<%=ShenFenZhengHao%>"/>
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生日：<input type="text" class="input3" name="ShengRi"  disabled="disabled" value="<%=ShengRi%>"/>
					</div>
                    <div class="bbD">
						入党时间：<input type="text"  name="RuDangShiJian" disabled="disabled" value="<%=RuDangShiJian%>"   class="input3" />
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;手机号：<input type="text" class="input3" name="ShouJiHao" disabled="disabled" value="<%=ShouJiHao%>"/>
					</div>
                    <div class="bbD">
						家庭地址：<input type="text" class="input4" name="JiaTingDiZhi" disabled="disabled" value="<%=JiaTingDiZhi%>"/>
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：
                        <asp:DropDownList ID="DDLXingBie" class="input5"  runat="server" Enabled="True" OnSelectedIndexChanged="DDLXingBie_SelectedIndexChanged">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        </asp:DropDownList>
					</div>
                    <div class="bbD">
						政治面貌：
                        <asp:DropDownList ID="DDLZhengZhiMianMao" class="input5"  runat="server" Enabled="True">
                        <asp:ListItem>团员</asp:ListItem>
                        <asp:ListItem>群众</asp:ListItem>
                        <asp:ListItem>正式党员</asp:ListItem>
                        <asp:ListItem>预备党员</asp:ListItem>
                        </asp:DropDownList>
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年级：
                        <asp:DropDownList ID="DDLNianJi" class="input5" Enabled="True"  runat="server" >
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        </asp:DropDownList>
					</div>
					<div style="height: 30px"></div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

