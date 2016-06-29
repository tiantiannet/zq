using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class WeixinUser : System.Web.UI.Page
    {
        public BLL.WeixinUser wu;
        public String result;

        protected void Page_Load(object sender, EventArgs e)
        {
            wu = new BLL.WeixinUser();
            result = wu.getWeixinUserInfo();
        }
    }
}