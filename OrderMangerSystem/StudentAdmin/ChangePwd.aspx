<%@ Page Title="" Language="C#" MasterPageFile="MasterPageRight.master" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="NYAdmin_ChangePwd" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">系统管理</a>&nbsp;-</span>&nbsp;修改密码
			</div>
		</div>
		<div class="page ">
			<!-- 修改密码页面样式 -->
			<div class="bacen">
				<div class="bbD">管理员用户名：&nbsp;&nbsp;&nbsp;&nbsp;<%=ZhangHao %></div>
				<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;输入旧密码：<input type="password" class="input3"
						onblur="checkpwd1()" id="pwd1" name="YMiMa" /> <img class="imga" src="img/ok.png" /><img class="imgb" src="img/no.png" />
				</div>
				<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;输入新密码：<input type="password" class="input3"
						onblur="checkpwd2()" id="pwd2" name="XMiMa"/> <img class="imga"	src="img/ok.png" /><img class="imgb" src="img/no.png" />
				</div>
				<div class="bbD">
					再次确认密码：<input type="password" class="input3" onblur="checkpwd3()" id="pwd3" name="QMiMa" /> <img class="imga" src="img/ok.png" /><img
						class="imgb" src="img/no.png" />
				</div>
				<div class="bbD">
					<p class="bbDP">
						<asp:Button ID="BtTiJiao" class="btn_ok btn_yes" runat="server" Text="提交" 
                            onclick="BtTiJiao_Click" />
						<a class="btn_ok btn_no" href="#">取消</a>
					</p>
				</div>
			</div>

			<!-- 修改密码页面样式end -->
		</div>
	</div>

    <script type="text/javascript">
        function checkpwd1() {
            var user = document.getElementById('pwd1').value.trim();
            if (user.length >= 1 && user.length <= 12) {
                $("#pwd1").parent().find(".imga").show();
                $("#pwd1").parent().find(".imgb").hide();
            } else {
                $("#pwd1").parent().find(".imgb").show();
                $("#pwd1").parent().find(".imga").hide();
            };
        }
        function checkpwd2() {
            var user = document.getElementById('pwd2').value.trim();
            if (user.length >= 6 && user.length <= 12) {
                $("#pwd2").parent().find(".imga").show();
                $("#pwd2").parent().find(".imgb").hide();
            } else {
                $("#pwd2").parent().find(".imgb").show();
                $("#pwd2").parent().find(".imga").hide();
            };
        }
        function checkpwd3() {
            var user = document.getElementById('pwd3').value.trim();
            var pwd = document.getElementById('pwd2').value.trim();
            if (user.length >= 6 && user.length <= 12 && user == pwd) {
                $("#pwd3").parent().find(".imga").show();
                $("#pwd3").parent().find(".imgb").hide();
            } else {
                $("#pwd3").parent().find(".imgb").show();
                $("#pwd3").parent().find(".imga").hide();
            };
        }
</script>
</asp:Content>

