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
    public static OleDbConnection CreateDB()
    {        
            OleDbConnection odbc = new OleDbConnection(ConfigurationManager.AppSettings["Con"]);
            return odbc;        
    }
    #endregion

    #region  插入、删除、修改
    public static bool ExeSql(string Sql)  
    {
        OleDbConnection Con = DB.CreateDB();
        OleDbCommand Com = new OleDbCommand(Sql,Con);
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
        OleDbConnection Con = DB.CreateDB();
        try
        {
            Con.Open();
            OleDbDataAdapter sda = new OleDbDataAdapter(sql, Con);
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
    public static OleDbDataReader GetRow(string sql)
    {
        OleDbConnection con = DB.CreateDB();
        try
        {
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();

            OleDbCommand com = new OleDbCommand(sql, con);
            //CommandBehavior.CloseConnection参数的作用是OleDbDataReader关闭时，OleDbConnection也同时关闭。
            OleDbDataReader sdr = com.ExecuteReader(CommandBehavior.CloseConnection);                       
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
        OleDbConnection con = DB.CreateDB();
        //con.Open();
        OleDbCommand com = new OleDbCommand(sql, con);
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
        OleDbConnection con = DB.CreateDB();
        OleDbCommand com = new OleDbCommand(sql, con);
        com.Parameters.Add(new OleDbParameter("@name", OleDbType.VarChar, 20));//
        com.Parameters["@name"].Value = name;
        com.Parameters.Add(new OleDbParameter("@pass", OleDbType.VarChar, 20));
        com.Parameters["@pass"].Value = pass;
        int isEx;
        try
        {
            //判断数据库是否为连接状态
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            isEx = Convert.ToInt32(com.ExecuteScalar());
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
