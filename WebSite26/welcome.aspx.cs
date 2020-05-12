using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton1.Visible = false;
        LinkButton2.Visible = false;

        if ((string)(Session["pass"]) != "yes")
        {
            Response.Write("<script language=javascript> alert('拒绝访问'); </script>");
            Server.Transfer("Default.aspx");
        }
        else
        {
            Response.Write("<script language=javascript> alert('欢迎光临'); </script>");
        }

        if ((string)(Session["leve1"])=="admin")
        {
            LinkButton1.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}