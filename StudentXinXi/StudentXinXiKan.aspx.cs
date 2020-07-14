using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class NYAdmin_GongSiXinXi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //加载产品类别下拉列表框
        if (!IsPostBack)
        {
            StudentXinXiCs();
        }
    }


    public string BanJi,XingMing,MinZu, JiGuan,ShenFenZhengHao,ShengRi,RuDangShiJian,ShouJiHao,JiaTingDiZhi,XingBie,ZhengZhiMianMao,NianJi;
    public void StudentXinXiCs()
    {
        string Sql;
        Sql = "SELECT * FROM StudentXinXi where ZhangHao='" + Session["StudentUserName"] + "'";
        OleDbDataReader Sdr = DB.GetRow(Sql);
        try
        {
            if (Sdr.Read())
            {
                BanJi = Convert.ToString(Sdr["BanJi"]);
                XingMing = Convert.ToString(Sdr["XingMing"]);
                MinZu = Convert.ToString(Sdr["MinZu"]);
                JiGuan = Convert.ToString(Sdr["JiGuan"]);

                ShenFenZhengHao = Convert.ToString(Sdr["ShenFenZhengHao"]);
                ShengRi = Convert.ToString(Sdr["ShengRi"]);
                //RuDangShiJian = Convert.ToString(Sdr["RuDangShiJian"]);
                RuDangShiJian = Convert.ToDateTime(Sdr["RuDangShiJian"]).ToString("yyyy-MM-dd");
                ShouJiHao = Convert.ToString(Sdr["ShouJIHao"]);

                JiaTingDiZhi = Convert.ToString(Sdr["JiaTingDiZhi"]);
                XingBie = Convert.ToString(Sdr["XingBie"]);
                ZhengZhiMianMao = Convert.ToString(Sdr["ZhengZhiMianMao"]);
                NianJi = Convert.ToString(Sdr["NianJi"]);

                this.DDLXingBie.Text = XingBie;
                this.DDLZhengZhiMianMao.Text = ZhengZhiMianMao;
                this.DDLNianJi.Text = NianJi;

            }
            else
            {
                BanJi=XingMing=MinZu= JiGuan=ShenFenZhengHao=ShengRi=RuDangShiJian=ShouJiHao=JiaTingDiZhi=XingBie=ZhengZhiMianMao=NianJi = "";
            }                        
        }
        finally
        {
            Sdr.Close();
        }
    }


    protected void BtTiJiao_Click(object sender, EventArgs e)
    {
        //获取录入信息值
        string BJ = Request["BanJi"].ToString();
        string XM = Request["XingMing"].ToString();
        string MZ = Request["MinZu"].ToString();
        string JG = Request["JiGuan"].ToString();

        string SFZH = Request["ShenFenZhengHao"].ToString();
        string SR = Request["ShengRi"].ToString();
        string RDSJ = Request["RuDangShiJian"].ToString();
        string SJH = Request["ShouJiHao"].ToString();

        string JTDZ = Request["JiaTingDiZhi"].ToString();

        //信息录入，重点是掌握字符和数字的输入不同。 
        string Sql;
        Sql = "select count(*) from StudentXinXi where ZhangHao='" + Session["StudentUserName"] + "'";
        if (DB.GetCount(Sql) > 0)
        {
            Sql = "UPDATE StudentXinXi SET BanJi='" + BJ
                + "',XingMing='" + XM
                + "',MinZu='" + MZ
                + "',JiGuan='" + JG

                + "',ShenFenZhengHao='" + SFZH
                + "',ShengRi='" + SR
                + "',RuDangShiJian=#" + RDSJ
                + "#,ShouJiHao='" + SJH

                + "',JiaTingDiZhi='" + JTDZ
                + "',XingBie='" + this.DDLXingBie.SelectedValue
                + "',ZhengZhiMianMao='" + this.DDLZhengZhiMianMao.SelectedValue
                + "',NianJi='" + this.DDLNianJi.SelectedValue

                + "'  where ZhangHao='" + Session["StudentUserName"] + "'";           
        }
        else
        {
            Sql = "insert into StudentXinXi(BanJi,XingMing,MinZu, JiGuan,ShenFenZhengHao,ShengRi,RuDangShiJian,ShouJiHao,JiaTingDiZhi,XingBie,ZhengZhiMianMao,NianJi) values('"
          + BJ + "','"
          + XM + "','"
          + MZ + "','"
          + JG + "','"

          + SFZH + "','"
          + SR + "',#"
          + RDSJ + "#,'"
          + SJH + "','"

          + JTDZ + "','"
          + this.DDLXingBie.SelectedValue + "','"
          + this.DDLZhengZhiMianMao.SelectedValue + "','"
          + this.DDLNianJi.SelectedValue + "')";
        }        

        if (DB.ExeSql(Sql))
        {
            DB.MessageBoxTiShi("你的信息已经成功录入！点击确认，退出！");
            StudentXinXiCs();
        }
        else
        {
            DB.MessageBoxTiShi("你的信息录入不成功！请重新录入！");
            StudentXinXiCs();
        }
    }
    protected void DDLXingBie_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}