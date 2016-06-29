using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using DALFactory;
using Model;

namespace BLL
{
    public class talent
    {
        Italent dal = DALFactory.DataAccess.GetTalent();

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='oneId'>数据类实体初始化所需传参</param>
        public talent()
        {
            //初始化数据类实体
            dal.Make();
        }

        public String make()
        {
            String back = "";
            List<talentInfo> ti = dal.getInfo();

            for (int i = 0; i < ti.Count; i++)
            {
                String level = "";

                for (int j = 0; j < Int32.Parse(ti[i].level); j++)
                {
                    level += "<span class='glyphicon glyphicon-star'></span>";
                }

                back += @"<div class='col-md-4' style='margin-bottom:20px;'>
						<div class='panel panel-default resume-block-simple'>
							<div class='panel-body'>
									
								<img src='img/" + ti[i].skill + @".png' style='float:right;'>
								<h3>" + ti[i].name + @"</h3>
								<p>
									<span class='resume-label'>推荐指数:</span>
									<span class='resume-label'>
											
											"+ level +@"
											
									</span>
								</p>
								<p>
									<span class='resume-label'>身价:</span>
									<span class='resume-label'>" + ti[i].price + @"元</span>
								</p>
							</div>
							<!-- /.panel-body -->
						</div>
						<div class='col-xs-12 corp-simple-action'>
							<a href='cooper/recommended/talent/view_user_info.html?userId=41473&direction=1&match=5'>查看报告</a>
						</div>
					</div>";
            }

            return back;

        }
    }
}
