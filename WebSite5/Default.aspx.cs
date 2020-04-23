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
        float y = 0;
        if (float.Parse(TextBox1.Text) >=  0)
        {
            y = 4 * float.Parse(TextBox1.Text);
        }
        else
        {
            y = 15 - 2 * float.Parse(TextBox1.Text);
        }

        Label1.Text = y.ToString();
        Console.WriteLine();
    }
}