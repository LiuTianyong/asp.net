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
        if (Session["UserName"] == null)
        {
            Response.Redirect("../index.aspx");
            return;
        }
        if (Session["Password"] == null)
        {
            Response.Redirect("../index.aspx");
            return;
        }

        string UserName = Session["UserName"].ToString();
        string Password = Session["Password"].ToString();

        string Sql = "select * from Admin where ZhangHao=@UserName and MiMa=@KaoHao";
        if (!DB.Login(Sql, UserName, Password))
        {
            Response.Redirect("../index.aspx");
        }
    }

    protected void BtTuiChu_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["Password"] = null;
        Response.Redirect("../index.aspx");
    }
}