using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace Web
{
    public partial class Cooper_ChanllengeWeb : System.Web.UI.Page
    {
        BLL.Contest contest;
        protected void Page_Load(object sender, EventArgs e)
        {
            contest = new Contest();
            this.ele.InnerHtml = contest.make();
        }
    }
}