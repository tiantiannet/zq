using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace Web
{
    public partial class Cooper_verify : System.Web.UI.Page
    {
        /// <summary>
        /// 业务类
        /// </summary>
        BLL.Cooper_verify coop_verify;
        /// <summary>
        /// 页面加载
        /// </summary>
        /// <param name="sender">系统传参</param>
        /// <param name="e">系统传参</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //在此构造一个BLL业务类
            this.coop_verify = new BLL.Cooper_verify();
        }
        /// <summary>
        /// 公司验证信息事件
        /// </summary>
        /// <param name="sender">系统传参</param>
        /// <param name="e">系统传参</param>
        protected void confimCompany_btn_Click(object sender, EventArgs e)
        {
            String corpname;
            //String corppic;
            String idphone;
            String corptelephone;
            String corpweixin;
            String selectprov;
            String selectindustry;
            //String logopic;
            corpname = corp_name.Text;
            //corppic = corp_pic.Text;
            idphone = id_phone.Text;
            corptelephone = telehone.Text;
            corpweixin = weixin.Text;
            selectprov = select_prov.Value;
            selectindustry = select_industry.Value;
            String username = Session["username"].ToString();
            coop_verify.cooper_verify(username,corpname, idphone, corptelephone, corpweixin, selectprov, selectindustry);

            Response.Redirect("Corp_index.aspx");
        }
    }
}