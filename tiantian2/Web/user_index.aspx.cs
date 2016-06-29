using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class user_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BLL.challenge cg = new BLL.challenge();
            String get = cg.make();
            this.ele.InnerHtml = get;
        }
    }
}