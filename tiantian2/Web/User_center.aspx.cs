using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class User_center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Session["username"].ToString();
            BLL.User_center uc = new BLL.User_center(username);
            String get = uc.make();
            this.ele.InnerHtml = get;
        }
    }
}