using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
     static int num, one, two;
     static float err = 0, right = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random random = new Random();
            num = one = random.Next(1, 10);
            LabelNumer1.Text = num.ToString();

            num = two = random.Next(1, 10);
            LabelNumer2.Text = num.ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LabelMsg.Text = "";
        if (err + right == 0)
        {
            LabelList.Text = "";
            LabelMsg.Text = "";
        }

        if (TextBox1.Text == "")
        {
            LabelMsg.Text = "请输入答案";
        }

        if (one + two == int.Parse(TextBox1.Text))
        {
            right = right + 1;
            LabelList.Text = LabelList.Text + one.ToString() + "+" + two.ToString() + "=" + TextBox1.Text +
                             "&nbsp;&nbsp;&nbsp;√" + "<br>";
        }
        else
        {
            err = err + 1;
            LabelList.Text = LabelList.Text + one.ToString() + "+" + two.ToString() + "=" + TextBox1.Text +
                             "&nbsp;&nbsp;&nbsp;×" + "<br>";
        }
        Random random = new Random();
        num = one = random.Next(1, 10);
        LabelNumer1.Text = num.ToString();
        num = two = random.Next(1, 10);
        LabelNumer2.Text = num.ToString();

        TextBox1.Text = "";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        LabelMsg.Text = "";
        float total = right + err;
        float fresult = right / total * 100;
        LabelMsg.Text = "完成" + total.ToString() + "题，正确：" + right.ToString() + ",错误" + err.ToString()
                        + "得总分：" + fresult.ToString();
    }
}