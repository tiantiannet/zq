using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web
{
    public class PersonBasePage:BasePage
    {
        public PersonBasePage()
        {
            this.Load += new EventHandler(PersonBasePage_Load);
        }

        void PersonBasePage_Load(object sender, EventArgs e)
        {
            if (!Session["type"].Equals("0"))
            {
                Response.Redirect("OxcodeWeb.aspx");
            }
        }
    }
}