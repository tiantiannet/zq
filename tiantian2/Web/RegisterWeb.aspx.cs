using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class RegisterWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.register = new BLL.Register();
        }
        protected void display(String msg)
        {
            if (msg.Equals("")) return;
            Response.Write(@"<script> alert('" + msg + @"')</script>");
        }
        BLL.Register register;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(login_email.Text.Equals(""))
            {
                display("please input your login email");
                return;
            }
            if(Password2.Text.Equals(""))
            {
                display("please input your password");
                return;
            }
            if (CheckBox1.Checked == false)
            {
                display("请同意我们的条款");
                return;
            }
            String sel = RadioButtonList1.SelectedValue;

            //Response.Write(@"<script> alert('" + login_email.Text + @"')</script>");
            //Response.Write(@"<script> alert('" + Password2.Text + @"')</script>");
            //Response.Write(@"<script> alert('" + sel + @"')</script>");
            String msg;
            msg = register.register(login_email.Text, Password2.Text, sel);

            display(msg);

            if (msg.Equals("succeed"))
            {
                if(sel.Equals("1"))
                    Response.Redirect("Cooper_verify.aspx");
                else 
                    Response.Redirect("User_center.aspx");
            }

        }

    }
}