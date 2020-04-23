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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex >= 0)
        {
            if (RadioButtonList1.SelectedValue == "男")
            {
                Label1.Text = "你选择男";
            }
            else
            {
                Label1.Text = "你选择女";
            }
        }
        else
        {
            Label1.Text = "请选择";
        }
    }
}