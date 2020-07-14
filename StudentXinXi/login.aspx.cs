using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StAdmin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ibtn_yzm.ImageUrl = "ImageCode.aspx";
    }
    protected void BtDengLu_Click(object sender, EventArgs e)
    {
        if (TBUser.Text == "")
        {
            DB.MessageBoxTiShi("姓名为空！");
            return;
        }
        if (TBPassword.Text == "")
        {
            DB.MessageBoxTiShi("密码为空！");
            return;
        }
        string code = TBYanZhanMa.Text;
        // 从cookie 拿到验证码
        HttpCookie htco = Request.Cookies["ImageV"];
        string scode = htco.Value.ToString();
        if (code != scode)
        {
            DB.MessageBoxTiShi("验证码输入不正确！");
            return;
        }

        //上边的为条件检测
        string UserName = TBUser.Text;
        string Password = TBPassword.Text;

        string sql = "select * from Student where Zhanghao=@UserName and MiMa=@KaoHao";
        if (DB.Login(sql, UserName, Password))
        {
            Session["StudentUserName"] = UserName;
            Session["Password"] = Password;
            Response.Redirect("index.aspx");
        }
        else
        {
            DB.MessageBoxTiShi("账号或密码不正确！");
        }
    }
}