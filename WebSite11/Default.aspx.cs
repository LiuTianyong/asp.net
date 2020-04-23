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
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            Label1.Text = "你选择男";
        }

        if (RadioButton2.Checked)
        {
            Label1.Text = "你选择女";
        }

        if (!RadioButton1.Checked && RadioButton2.Checked)
        {
            Label1.Text = "请选择";
        }
    }
}