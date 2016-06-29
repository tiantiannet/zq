using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class corp_index : CompanyBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Session["username"].ToString();
            BLL.Corp_index ci = new BLL.Corp_index(username);
            String get = ci.make();
            this.ele.InnerHtml = get;
        }
    }
}