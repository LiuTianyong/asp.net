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
        this.Title = "计算机";
        TextBox3.ReadOnly = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float result = 0;
        result = float.Parse(TextBox1.Text) + float.Parse(TextBox2.Text);
        TextBox3.Text = result.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        float result = 0;
        result = float.Parse(TextBox1.Text) - float.Parse(TextBox2.Text);
        TextBox3.Text = result.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        float result = 0;
        result = float.Parse(TextBox1.Text) * float.Parse(TextBox2.Text);
        TextBox3.Text = result.ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        float result = 0;
        result = float.Parse(TextBox1.Text) / float.Parse(TextBox2.Text);
        TextBox3.Text = result.ToString();
    }
}