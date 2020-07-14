using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class NYAdmin_ChanPinGuanLi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Con();
    }

    #region  分页显示
    private void Con()
    {
        string Sql = "SELECT * FROM Student ORDER BY id DESC";
        PagedDataSource Pds = new PagedDataSource();
        Pds.DataSource = DB.GetRows(Sql).DefaultView;
        Pds.AllowPaging = true;//允许分页
        Pds.PageSize = 10;//单页显示项数
        int CurPage;

        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        Pds.CurrentPageIndex = CurPage - 1;
        int Count = Pds.PageCount;

        lblCurrentPage.Text = "当前页：" + CurPage.ToString() + "页";
        labPage.Text = Count.ToString();

        this.last.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(Count);

        if (!Pds.IsFirstPage)
        {
            this.first.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=1";
            this.last.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(Count);
            up.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1);
        }
        else
        {
            this.first.Enabled = false;
        }

        if (!Pds.IsLastPage)
        {

            next.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1);
        }
        else
        {
            this.last.Enabled = false;
        }

        RpChanPin.DataSource = Pds;
        RpChanPin.DataBind();
    }
    #endregion

    protected void RpChanPin_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            string s = "delete from Student where id=" + e.CommandArgument;
            DB.ExeSql(s);
            Con();
            return;
        }
    }

    protected void BtShengCheng_Click(object sender, EventArgs e)
    {
        int i,SL;
        SL = Convert.ToInt32(this.TBShuLiang.Text);
        String newFileName,Sql;
        for (i = 0; i < SL;i++ )
        {
            newFileName = DateTime.Now.ToString("yyyyMMddHHmmssffff", DateTimeFormatInfo.InvariantInfo);
            Sql = "insert into Student(ZhangHao,MiMa) values('"+newFileName+"','123456')";
            DB.ExeSql(Sql);
        }
        Con();
    }
    protected void BtDaoChu_Click(object sender, EventArgs e)
    {
        // 导出信息
        /* 参考 https://www.cnblogs.com/mq0036/p/5005340.html
         access  导出功能
         * 参数 1 导出地址文件路径 2 导出的表
         */

        string Sql;
        // 删除上一次导出的
        System .IO .File .Delete(Server.HtmlEncode(Request.PhysicalApplicationPath) + @"attached\SZH.xls");
        Sql = "Select * INTO [Excel 8.0;DATABASE=" + Server.HtmlEncode(Request.PhysicalApplicationPath) + @"attached\SZH.xls].[Sheet1] FROM Student";
        DB.ExeSql(Sql);
        DB.MessageBoxTiShi("学生帐号信息导出成功！");
    }
}