﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NYAdmin_ChanPinGuanLi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Con();
    }

    #region  分页显示
    private void Con()
    {
        string Sql = "SELECT * FROM Admin ORDER BY id DESC";
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
            string s = "delete from Admin where id=" + e.CommandArgument;
            DB.ExeSql(s);
            Con();
            return;
        }

        if (e.CommandName == "Update")
        {
            string s = "UPDATE Admin SET MiMa='123456' where id=" + e.CommandArgument;
            DB.ExeSql(s);
            Con();
            return;
        }
    }

    protected void BtSouSuo_Click(object sender, EventArgs e)
    {
        string Sql = "insert into Admin(ZhangHao,MiMa) values('" + this.TBZhangHao.Text + "','"+this.TBMiMa.Text+"')";
        DB.ExeSql(Sql);
        Con();
    }
}