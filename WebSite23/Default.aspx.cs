using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // DropYear.AutoPostBack = true;
        // DropMonth.AutoPostBack = true;

        if (!IsPostBack) {
            for (int y = 1990; y < 2001; y++) {
                DropDownList1.Items.Add(y.ToString());
            }
            for (int m = 1; m < 13; m++) {
                DropDownList2.Items.Add(m.ToString());
            }
            Panel1.Visible = false;

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        string y = DropDownList1.SelectedValue;
        string m = DropDownList2.SelectedValue;
        string d = (DateTime.Now.Day).ToString();

        if(DropDownList1.Text!="--选择年份--"&&DropDownList2.Text!="--选择月份--"){
            Panel1.Visible = true;
            Calendar1.VisibleDate = Convert.ToDateTime(y+"-"+m+"-"+d);
        
        }


    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
        Panel1.Visible = false;
    }
}