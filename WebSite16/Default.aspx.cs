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
        if (FileUpload1.HasFile)
        {
            int intFileSize = FileUpload1.PostedFile.ContentLength;
            if (intFileSize > 1024 * 1024 )
            {
                Label1.Text = "文件大小超过1M"; 
            }

            string strFileName = FileUpload1.FileName;
            string strFileType = FileUpload1.PostedFile.ContentType;
            string strSavePath = Server.MapPath("~/upload/");
            FileUpload1.PostedFile.SaveAs(strSavePath+strFileName);
            HyperLink1.Visible = true;
            HyperLink1.NavigateUrl = "~/upload/" + strFileName;
            
            if (strFileType == "image/pjpeg")
            {
                HyperLink1.ImageUrl = "~/upload/" + strFileName;
            }
            else
            {
                HyperLink1.Text = strFileName;
                Label1.Text = "保存成功";
             
            }
            // Label1.Text = "没有发现要保存的文件";
        }

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Selected)
        {
            
        }
    }
}