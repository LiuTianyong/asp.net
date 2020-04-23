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
        string exp, sp;
        int res;
        for (int i = 1; i <= 9; i++)
        {
            for (int j = 1; j <= 9; j++)
            {
                res = i * j;
                exp = i.ToString() + "*" + j.ToString() + "=" + res.ToString();
                Label1.Text = Label1.Text + exp;

                if (i * j <10)
                {
                    sp = "&nbsp;&nbsp;&nbsp;&nbsp;";
                }
                else
                {
                    sp = "&nbsp;&nbsp;&nbsp;";
                }

                Label1.Text = Label1.Text + sp;
            }
            Label1.Text = Label1.Text + "<br>";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}