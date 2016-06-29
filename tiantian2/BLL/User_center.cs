using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;
using Model;

namespace BLL
{
    public class User_center
    {
        IUser_center dal = DALFactory.DataAccess.GetUser_center();

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='username'>用户id</param>
        public User_center(String username)
        {
            //初始化数据类实体
            dal.Make(username);
        }
        
        public String make()
        { 
             String back = "";
             User_centerInfo uc = dal.getInfo();

             back+= @"<div class='col-md-3'>
				<section id='Section1'>
					<div class='panel-body shadow-effect'>
						<!-- <h3><i class='fa fa-money'></i> 我的身价</h3> -->
						<span style='padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;'>
							我的身价
						</span>
						<div class='align-center'>
							<h1 style='color:#3872a4; font-size:48px;'>" + uc.price + @"</h1>
						</div>
						<span class='label label-warning'>" + uc.level + @"</span>
						<p class='help-block'>	菜鸟：你在老大的指导下学习技能知识，做一些简单的模块，copy和paste是你的好伙伴。正在快速的成长入门。
						</p>
					</div>
					<div class='panel-body shadow-effect' style='margin-top:20px;'>
						<span style='padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;'>
							基本资料
						</span>
						<h3>" + uc.name + @"</h3>
						<p>
							<span class='resume-label'>性别: " + uc.sex + @" </span>
                            </br>
							<span class='resume-label'>年龄: " + uc.age + @" </span>
						</p>
						<p>
							<span class='resume-label'>手机: " + uc.skill + @"</span>
						</p>
						<p>
							<span class='resume-label'>邮箱: " + uc.email + @"</span>
						</p>
						<p>
							<span class='resume-label'>技术方向: 	
									" + uc.phone + @"
							</span>
						</p>
						<p>
							<span class='resume-label'>是否求职状态: " + uc.wantedStatus + @"</span>
						</p>
						<p>
							<span class='resume-label'>期望工作地点: " + uc.work_prov + @"</span>
						</p>

						<p class='pull-right'>
							<a href='Edit_user_info.aspx' class='resume-action'>编辑</a>
						</p>
					</div>
					<!-- /.panel-body -->
					
				</section>
			</div>";
                         return back;
        }
    }
}
