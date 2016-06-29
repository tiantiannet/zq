using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class New_Recruit_1 : CompanyBasePage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void new_challenge_btn_1_Click(object sender, EventArgs e)
        {
            String type = RadioButtonList1.SelectedValue;
            String select = "1";
            String not_select = "0";
            String Camera = not_select;
            if (is_camera.Checked)
                Camera = select;
            String Public = not_select;
            if (is_public.Checked)
                Public = select;
            Session["nc1_type"] = type;
            Session["nc1_is_camera"] = is_camera;
            Session["nc1_is_public"] = is_public;
            Response.Redirect("New_Recruit_2.aspx");
        }
    }
}