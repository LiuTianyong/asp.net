using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("浏览器版本是：" + Request.Browser.Type + "<br>");
        Response.Write("操作系统是：" + Request.Browser.Platform + "<br>");
        Response.Write("是否支持AX：" + Request.Browser.ActiveXControls + "<br>");
        Response.Write("是否支持HTML框架：" + Request.Browser.Frames + "<br>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:8876/Default2.aspx?id=" + TextBox1.Text);
    }
}