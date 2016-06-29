using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class UserMana : System.Web.UI.Page
    {
        public BLL.UserMana um;
        public String result;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            um = new BLL.UserMana();
            result = um.getUserInfo();
        }

    }
}