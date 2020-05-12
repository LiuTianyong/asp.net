using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton1.Visible = false;
        LinkButton2.Visible = false;

        if ((string)(Session["rank"]) != "会员用户")
        {
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
        }
        else if ((string)(Session["rank"]) != "普通用户")
        {
            LinkButton2.Visible = true;
        }
        else
        {
            Response.Redirect("http://localhost:4261/Default.aspx");
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}