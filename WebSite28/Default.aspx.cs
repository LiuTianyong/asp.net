using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    List<User> users = new List<User>();
    protected void Page_Load(object sender, EventArgs e)
    {

        User user1  = new User();
        user1.account = "123";
        user1.password = "123";
        user1.rank = "会员用户";

        User user2 = new User();
        user2.account = "321";
        user2.password = "321";
        user2.rank = "普通用户";

        users.Add(user1);
        users.Add(user2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (var VARIABLE in users)
        {
            if (VARIABLE.account == TextBox1.Text)
            {
                if (VARIABLE.password == TextBox2.Text)
                {
                    Session["rank"] = VARIABLE.rank;
                    Response.Redirect("http://localhost:4261/Default2.aspx");
                }
            }
        }
    }
}

class User
{
    public string account;
    public string password;
    public string rank;

}