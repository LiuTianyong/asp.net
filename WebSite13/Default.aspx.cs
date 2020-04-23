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
        string mes = "";
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            if (ListBox1.Items[i].Selected)
            {
                mes += ListBox1.Items[i].Text;
            }
        }

        Label1.Text = mes;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string mes = "";
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            if (ListBox1.Items[i].Selected)
            {
                mes += ListBox1.Items[i].Text;
            }
        }

        Label1.Text = mes;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Image1.ImageUrl = "~/image/shamo.jpg";
        }
        else
        {
            Image1.ImageUrl = "~/image/shamo-001.jpg";
        }
    }
}