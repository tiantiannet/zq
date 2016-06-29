using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    /// <summary>
    /// 页面类
    /// 完成此处后请前往BLL中构造业务类实体
    /// </summary>
    public partial class One : System.Web.UI.Page
    {
        /// <summary>
        /// 业务类
        /// </summary>
        BLL.One one;

        /// <summary>
        /// 页面加载
        /// </summary>
        /// <param name="sender">系统传参</param>
        /// <param name="e">系统传参</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //在此构造一个BLL业务类
            this.one = new BLL.One("1");
            this.Name.Text = one.getName();
        }
    }
}