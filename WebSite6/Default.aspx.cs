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
        String s = TextBox1.Text;

        switch (s)
        {
            case "国家级":
                Label1.Text = "8000元";
                break;

            case "书福":
                Label1.Text = "12000元";
                break;

            case "省级":
                Label1.Text = "5000元";
                break;

            case "校级":
                Label1.Text = "1500元";
                break;

            default:
                Label1.Text = "输入错误";
                break;
        }
        // if (TextBox1.Text == "国家级" || TextBox1.Text == "书福" 
        //                            || TextBox1.Text == "省级" || TextBox1.Text == "校级")
        // {
        //     if (TextBox1.Text == "国家级")
        //     {
        //         Label1.Text = "8000元";
        //     }
        //     else if (TextBox1.Text == "书福")
        //     {
        //         Label1.Text = "12000元";
        //     }
        //     else if (TextBox1.Text == "省级")
        //     {
        //         Label1.Text = "5000元";
        //     }
        //     else
        //     {
        //         Label1.Text = "1500元";
        //     }
        // }
        // else
        // {
        //     Label1.Text = "输入错误";
        // }
    }
}