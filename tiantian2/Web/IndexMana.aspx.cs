using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class IndexMana : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Session["username"].ToString();
            BLL.IndexMana im = new BLL.IndexMana(username);
            String get = im.make();
            this.username.InnerText = get;
        }
    }
}