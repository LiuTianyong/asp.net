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

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int number1 = int.Parse(TextBox1.Text);
        int number2 = int.Parse(TextBox2.Text);
        int sum1 = 0, sum2 = 0;

        for (int i = number1; i < number2; i++)
        {
            if (i % 2 == 0)
            {
                sum1 = sum1 + i;
            }
            else
            {
                sum2 = sum2 + i;
            }
        }

        Label1.Text = sum1.ToString();
        Label2.Text = sum2.ToString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}