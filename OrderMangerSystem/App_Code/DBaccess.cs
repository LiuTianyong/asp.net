using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Data.SqlClient;

/// <summary>
/// DB 的摘要说明
/// </summary>
public class DB
{
	public DB()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    #region 创建连接
    public static SqlConnection CreateDB()
    {
        String connStr = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        // SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["connectionString"]);
        conn.Open();
        return conn;        
    }
    #endregion

    #region  插入、删除、修改
    public static bool ExeSql(string Sql)  
    {
        SqlConnection Con = DB.CreateDB();
        SqlCommand Com = new SqlCommand(Sql, Con);
        try
        {
            //判断数据库是否为连接状态
            if (Con.State == System.Data.ConnectionState.Closed)
                Con.Open();
            Com.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            if(Con.State==System.Data.ConnectionState.Open)
                Con.Close();        
        }
    }
    #endregion

    #region  返回多行数据
    public static DataTable GetRows(string sql)
    {
        DataSet ds;
        SqlConnection Con = DB.CreateDB();
        try
        {
            Con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, Con);
            ds = new DataSet();
            sda.Fill(ds);
            return ds.Tables[0];
        }
        finally
        {
            if (Con.State == System.Data.ConnectionState.Open)
                Con.Close();
        }
    }
    #endregion

    #region 返回一行数据
    public static SqlDataReader GetRow(string sql)
    {
        SqlConnection con = DB.CreateDB();
        try
        {
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();

            SqlCommand com = new SqlCommand(sql, con);
            //CommandBehavior.CloseConnection参数的作用是OleDbDataReader关闭时，OleDbConnection也同时关闭。
            SqlDataReader sdr = com.ExecuteReader(CommandBehavior.CloseConnection);                       
            return sdr;
        }
        finally { }
    }
    #endregion

    #region  截取字符串
    public static string InterceptStr(string str, int len)   
    {
        if (str.Length > len)
        {
            str = str.Substring(0, len) + "...";
        }
        return str;
    }
    #endregion

    #region 得到行数
    public static int GetCount(string sql)
    {
        SqlConnection con = DB.CreateDB();
        //con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        try
        {
            //判断数据库是否为连接状态
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            int isEx = Convert.ToInt32(com.ExecuteScalar());
            return isEx;
        }
        finally 
        {
            if(con.State==System.Data.ConnectionState.Open)
                con.Close();        
        }
    }
    #endregion

    public static void MessageBoxTiShiGuanBi(string TxtMessage)//显示信息，点击确认后关闭窗口
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "');window.open('','_self');window.close();</script>";
        System.Web.HttpContext.Current.Response.Write(str);
    }

    public static void MessageBoxTiShi(string TxtMessage)//显示信息，点击确回到原页
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "');</script>";
        System.Web.HttpContext.Current.Response.Write(str);
    }

    #region 用户登录函数

    public static bool Login(string sql, string name, string pass)
    {
        SqlConnection con = DB.CreateDB();
        SqlCommand com = new SqlCommand(sql, con);
        com.Parameters.Add(new SqlParameter("@name", SqlDbType.VarChar, 10));//
        com.Parameters["@name"].Value = name;
        com.Parameters.Add(new SqlParameter("@pass", SqlDbType.VarChar, 16));
        com.Parameters["@pass"].Value = pass;
        int isEx;
        try
        {
            //判断数据库是否为连接状态
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            SqlDataReader read = com.ExecuteReader();

            isEx = Convert.ToInt32(com.ExecuteReader());
            // isEx = Convert.ToInt32(com.ExecuteScalar());
        }
        finally
        {
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
        }

        if (isEx > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    #endregion

}
