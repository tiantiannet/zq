using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class WeixinOrder : System.Web.UI.Page
    {
        public BLL.WeixinOrder wu;
        public String result;

        protected void Page_Load(object sender, EventArgs e)
        {
            wu = new BLL.WeixinOrder();
            result = wu.getWeixinOrderInfo();
        }
    }
}