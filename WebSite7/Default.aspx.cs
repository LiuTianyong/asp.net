using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

public partial class _Default : System.Web.UI.Page
{
    private static float sum, total, result, price, agio = 1;
    int num;
    private string gname, goods;
    

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            if (total >= 300)
            {
                agio = 0.85F;
            }
            else if (total >= 100)
            {
                agio = 0.9F;
            }
            else
            {
                agio = 1F;
            }

            result = total * agio;
            Label1.Text = Label1.Text + "总金额：" + total.ToString() + "\t" +
                          "折扣："+ agio.ToString() +"\t" 
                              +"付款金额："+ result.ToString();
            Button1.Enabled = false;
           return;
        }

        switch (TextBox1.Text)
        {
            case "001" :
                price = 12F;
                goods = "书包";
                break;

            case "002":
                price = 49F;
                goods = "运动鞋";
                break;

            case "003":
                price = 13F;
                goods = "牙膏";
                break;

            case "004":
                price = 300F;
                goods = "上衣";
                break;

            default:
                Label1.Text = "输入编号错误,请返回重新输入";
                break;
            return;

        }

        if (TextBox1.Text == "")
        {
            num = 1;
        }
        else
        {
            num = int.Parse(TextBox1.Text);
        }

        sum = num * price;
        total = total + sum;
        Label1.Text = Label1.Text + goods + "&nbsp;&nbsp;&nbsp;" + price.ToString("f") + "&nbsp;&nbsp;&nbsp;" + num.ToString() + "&nbsp;&nbsp;&nbsp;" + sum.ToString("f") + "<br>";
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        Label1.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        sum = 0; total = 0; result = 0; price = 0; agio = 1;
    }
}