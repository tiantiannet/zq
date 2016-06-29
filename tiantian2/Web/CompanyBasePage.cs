using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web
{
    public class CompanyBasePage:BasePage
    {
        public CompanyBasePage()
        {
            this.Load += new EventHandler(CompanyBasePage_Load);
        }

        void CompanyBasePage_Load(object sender, EventArgs e)
        {
            if (!Session["type"].Equals("1"))
            {
                Response.Redirect("OxcodeWeb.aspx");
            }
        }
    }
}