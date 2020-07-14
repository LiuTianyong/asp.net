using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NYAdmin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["StudentUserName"] == null)
        {
            Response.Redirect("login.aspx");
            return;
        }
        if (Session["Password"] == null)
        {
            Response.Redirect("login.aspx");
            return;
        }

        string UserName = Session["StudentUserName"].ToString();
        string Password = Session["Password"].ToString();

        string Sql = "select * from Student where Zhanghao=@UserName and MiMa=@KaoHao";
        if (!DB.Login(Sql, UserName, Password))
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void BtTuiChu_Click(object sender, EventArgs e)
    {
        Session["StudentUserName"] = null;
        Session["Password"] = null;
        Response.Redirect("login.aspx");
    }
}