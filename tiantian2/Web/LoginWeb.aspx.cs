using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class LoginWeb : System.Web.UI.Page
    {

        /// <summary>
        /// 业务类
        /// </summary>
        BLL.Login login;
        /// <summary>
        /// 页面加载
        /// </summary>
        /// <param name="sender">系统传参</param>
        /// <param name="e">系统传参</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["type"] = "";
            //在此构造一个BLL业务类
            if (Session["username"] != null && Session["username"].ToString() != "")
            {
                Response.Redirect("OxcodeWeb.aspx");
            }
            this.login = new BLL.Login();
        }

        /// <summary>
        /// 登录事件
        /// </summary>
        /// <param name="sender">系统传参</param>
        /// <param name="e">系统传参</param>
        protected void login_Click(object sender, EventArgs e)
        {
            String username;
            String password;
            username = login_email.Text;
            password = login_password.Text;

            String msg = login.login(username,password);
            //输出
            Response.Write(@"<script> alert('" + msg + @"')</script>");

            String mytype = login.gettype();
            if (msg.Equals("success"))
            {
                Session["username"] = username;
                Session["type"] = mytype;
            }
            if (mytype.Equals("1"))
                Response.Redirect("Cooper_verify.aspx");
            else if (mytype.Equals("0"))
                Response.Redirect("User_center.aspx");
            else if (mytype.Equals("2"))
                Response.Redirect("IndexMana.aspx");
        }
    }
}