using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    struct User
    {
        public string name;
        public string Password;
        public string Leve1;
    }
    User[] users = new User[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        users[0].name = "abc";
        users[0].Password = "123";
        users[0].Leve1 = "admin";
        users[1].name = "bbb";
        users[1].Password = "123";
        users[1].Leve1 = "norma";
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 2; i++)
        {
            if (users[i].name == TextBox1.Text)
            {
                if (users[i].Password == TextBox2.Text)
                {
                    Session["pass"] = "yes";
                    Session["leve1"] = users[i].Leve1;
                    Response.Redirect("welcome.aspx?name=" + TextBox1.Text);
                }
            }
        }
        Response.Write("<script language=javascript>alert('用户名密码错误');</script>");
    }
}