<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRight.master" AutoEventWireup="true" CodeFile="StudentXinXiGai.aspx.cs" Inherits="NYAdmin_GongSiXinXi" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" runat="Server">
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
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
                        <input type="text" class="input3" name="BanJi" value="<%=BanJi%>"/>
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：<input type="text"  class="input3" name="XingMing" value="<%=XingMing%>"/>
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 民族：<input type="text" class="input3" name="MinZu" value="<%=MinZu%>" />
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;籍贯：<input type="text" class="input4" name="JiGuan" value="<%=JiGuan%>"/>
					</div>
                    <div class="bbD">
						身份证号：<input type="text" class="input3" name="ShenFenZhengHao" value="<%=ShenFenZhengHao%>"/>
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生日：<input type="text" class="input3" name="ShengRi" value="<%=ShengRi%>"/>
					</div>
                    <div class="bbD">
						入党时间：<input type="text"  name="RuDangShiJian"  value="<%=RuDangShiJian%>"   class="input3 Wdate"  onclick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})"/>
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;手机号：<input type="text" class="input3" name="ShouJiHao" value="<%=ShouJiHao%>"/>
					</div>
                    <div class="bbD">
						家庭地址：<input type="text" class="input4" name="JiaTingDiZhi" value="<%=JiaTingDiZhi%>"/>
					</div>
                    <div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：
                        <asp:DropDownList ID="DDLXingBie" class="input5"  runat="server" Enabled="True">
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
                        <asp:DropDownList ID="DDLNianJi" class="input5"  runat="server" Enabled="True">
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                        </asp:DropDownList>
					</div>
					<div class="bbD">
						<p class="bbDP">
                            <asp:Button ID="BtTiJiao" class="btn_ok btn_yes" runat="server"  Text="提交"  onclick="BtTiJiao_Click" />
							<a class="btn_ok btn_no" href="#">取消</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

