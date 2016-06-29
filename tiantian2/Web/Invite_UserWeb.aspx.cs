using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tools;
using CodeScales;
namespace Web
{
    public partial class Invite_UserWeb : CompanyBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            topic.Text = Session["username"] + "-在线笔试邀请函";
        }

        protected void display(String msg)
        {
            if (msg.Equals("")) return;
            Response.Write(@"<script> alert('" + msg + @"')</script>");
        }

        protected void invite_Click(object sender, EventArgs e)
        {
            String str_topic = topic.Text;
            String str_content = content.Text;
            String str_to = To.Text;
            CodeScales.Http.Methods.HttpResponse response = Tools.SendClould.send(str_to, str_topic, str_content);
            display("Response Code: " + response.ResponseCode + "Response Content: " + CodeScales.Http.Entity.EntityUtils.ToString(response.Entity));
        }
    }
}