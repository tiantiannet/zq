using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class Edit_tag_view : System.Web.UI.Page
    {
            /// <summary>
            /// 业务类
            /// </summary>
            BLL.Edit_tag_views edit_tag;

            /// <summary>
            /// 页面加载
            /// </summary>
            /// <param name="sender">系统传参</param>
            /// <param name="e">系统传参</param>
            protected void Page_Load(object sender, EventArgs e)
            {
              //在此构造一个BLL业务类
              this.edit_tag = new BLL.Edit_tag_views();
            }       

            /// <summary>
            /// 增加公司标签事件
            /// </summary>
            /// <param name="sender">系统传参</param>
            /// <param name="e">系统传参</param>
            protected void save_Next_Click(object sender, EventArgs e)
            {
                String corp_cont = "";
                if (corp_box1.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "五险一金,";
                }

                if (corp_box2.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "年底双薪,";
                }

                if (corp_box3.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "股份期权,";
                }

                if (corp_box4.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "年终分红,";
                }

                if (corp_box5.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "绩效奖金,";
                }

                if (corp_box6.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "岗位晋升,";
                }

                if (corp_box7.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "年度旅游,";
                }

                if (corp_box8.Checked == true)
                {
                    if (!corp_cont.Equals(""))
                        corp_cont = ",";
                    corp_cont += "弹性工作,";
                }
                String username = Session["username"].ToString();
                corp_cont.Substring(0,corp_cont.Length-1);
                edit_tag.edit_tag_view(username, corp_cont);

                Response.Redirect("Corp_index.aspx");
            }
    }
}