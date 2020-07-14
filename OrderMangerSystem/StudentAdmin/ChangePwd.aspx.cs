using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NYAdmin_ChangePwd : System.Web.UI.Page
{
    public string ZhangHao;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"]!=null)
            ZhangHao = Session["UserName"].ToString();

    }


    protected void BtTiJiao_Click(object sender, EventArgs e)
    {
        string YMM = Request["YMiMa"].ToString();
        string XMM = Request["XMiMa"].ToString();

        string Sql;
        Sql = "select count(*) from Student where ZhangHao='" + ZhangHao + "' and MiMa='" + YMM + "'"; 
        if (DB.GetCount(Sql) ==0)
        {
            DB.MessageBoxTiShi("原密码错误！");
            return;
        }

        Sql = "UPDATE Student SET MiMa = '" + XMM + "' WHERE ZhangHao='" + ZhangHao + "' and MiMa='" + YMM + "'";
        if (DB.ExeSql(Sql))
        {
            DB.MessageBoxTiShi("您的密码已经成功修改！点击确认，退出！");
        }
        else
        {
            DB.MessageBoxTiShi("您的密码修改不成功！请重新录入！");
        }
    }
}