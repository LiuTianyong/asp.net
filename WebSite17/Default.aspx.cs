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

        //DropDownList1.Items.Add("--请选择专业--");
        DropDownList1.Items.Add("计算机科学与技术");
        DropDownList1.Items.Add("软件工程");
        DropDownList1.Items.Add("大数据");
        DropDownList1.Items.Add("人工智能");
 
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Label1.Text = "你的学号是： " + TextBox1.Text+"<br>" + "你的专业是： "  + DropDownList1.Text;
        DropDownList1.Items.Clear();
        DropDownList1.Items.Add("计算机科学与技术");
        DropDownList1.Items.Add("软件工程");
        DropDownList1.Items.Add("大数据");
        DropDownList1.Items.Add("人工智能");

    }
}