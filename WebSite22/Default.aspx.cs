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
        if (!IsPostBack)
        {
            for (int i = 1990; i < 2000; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }

            for (int i = 1; i < 13; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }

            Panel1.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Drop_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        string y = DropDownList1.SelectedValue;
        string m = DropDownList2.SelectedValue;
        string d = DateTime.Now.Day.ToString();
        if (DropDownList1.Text != "--选择年份--" && DropDownList2.Text != "--选择月份--")
        {
            Panel1.Visible = true;
            Calendar1.VisibleDate = Convert.ToDateTime(y + "-" + m + "-" + d);

        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "你的生日是：" + Calendar1.SelectedDate.ToShortDateString();
        Panel1.Visible = false;
    }
}