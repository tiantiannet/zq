using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class ClientMana : System.Web.UI.Page
    {
        public BLL.ClientMana cm;
        public String result;

        protected void Page_Load(object sender, EventArgs e)
        {
            cm = new BLL.ClientMana();
            result = cm.getClientInfo();
        }
    }
}