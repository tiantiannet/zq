using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class MainPageMana : System.Web.UI.Page
    {

        /// <summary>
        /// 业务类
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        BLL.MainPageMana mpm;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.mpm = new BLL.MainPageMana();
            this.regUserCount.InnerText = mpm.getregUserCount();
            this.regClientCount.InnerText = mpm.getregClientCount();
            this.chaCount.InnerText = mpm.getchaCount();
            this.moneyCount.InnerText = mpm.getmoneyCount();
            this.newUserCount.InnerText = mpm.getnewUserCount();
            this.newClientCount.InnerText = mpm.getnewClientCount();
            this.newChaCount.InnerText = mpm.getnewChaCount();
            this.newMoneyCount.InnerText = mpm.getmoneyCount();
        }
    }
}