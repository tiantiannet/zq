using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DBUtility;
using System.Data;

namespace Web
{
    public partial class new_recruit_2 : System.Web.UI.Page
    {
        BLL.recuit2 r2;
        protected void Page_Load(object sender, EventArgs e)
        {
             r2 = new recuit2();

            this.ele.InnerHtml = r2.make() ;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num = r2.getNum();

            Random rd = new Random();
            System.DateTime currentTime = new System.DateTime();
            String d = currentTime.Year + currentTime.Month + currentTime.Day + "" + rd.Next(10000, 99999);

            //获取题目总的难度
            int hard = 0;
            for (int i = 0; i < num; i++)
            {
                String get = Request.Form.Get("checkbox" + i);
                if (get != null && get.Equals("on"))
                {
                    String sql = "select hard from probrems where id = '" + i + "'";
                    //查询结果容器
                    DataSet record = new DataSet();
                    //从索引中补全语句
                    MySqlDBCore.Execute(sql, ref record);
                    //若记录存在，填充
                    if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
                    {
                        hard += Int32.Parse(record.Tables[0].Rows[0]["hard"].ToString()); 
                    }
                }
            }

            String sql1 = "insert into contest(contest_id,username,type,hard) values('" + d + "','" + Session["username"].ToString() + " ','" + Session["nc1_type"].ToString() + "','" + hard + "') ";
            DBUtility.MySqlDBCore.Execute(sql1);
            for (int i = 0; i < num; i++)
            {
                String get = Request.Form.Get("checkbox" + i );
                String sql2 = "insert into contest_problem(contest_id,problem_id) values('" + d + "','" + i + "')";
                DBUtility.MySqlDBCore.Execute(sql2);
            }

            Response.Redirect("Cooper_ChanllengeWeb.aspx");
        }
    }
}