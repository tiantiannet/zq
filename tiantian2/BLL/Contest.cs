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
    public class Contest
    {
        IDAL.IContest dal = DALFactory.DataAccess.GetContest();

        public int num = 0;

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='oneId'>数据类实体初始化所需传参</param>
        public Contest()
        {
            //初始化数据类实体
            dal.Make();
        }

        public String make()
        {
            String back = "";
            List<ContestInfo> ti = dal.getInfo();

            num = ti.Count;

            for (int i = 0; i < ti.Count; i++)
            {
                String per = "66.6";
                back +=@"<div class='row'>
																<!-- new start-->
																<div class='col-md-5'>
																	<h2 style='margin: 12px 0 2px 0;'>
																		<a href='cooper/screening/user/screening_list.html?recruitId=3162'>[初级]"+ ti[i].type + @"工程师</a>
																	</h2>
																	<div style='width: 280px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;'>
																		<small class='text-muted'>"+ti[i].problems+@"

																		</small>
																	</div>
																	<!-- <p class='text-muted' style='padding: 0;margin: 0;'>2015/01/12</p> -->
																</div>
																<div class='col-md-2'>
																	<ul class='list-unstyled' style='margin: 7px 0;'>
																		<li>
																			<span class='badge badge-info'>"+ti[i].new_add+@"</span>
																			个新接受
																		</li>
																		<li>
																			<span class='badge badge-danger'>" + ti[i].new_wancheng + @"</span>
																			个新完成
																		</li>
																	</ul>
																</div>
																<div class='col-md-2'>
																	<ul class='list-unstyled' style='margin: 20px 0;'>
																		<li>
																			<span class='red'>" + per + @"</span>
																			%已合格
																		</li>
																	</ul>
																</div>
																<div class='col-md-3'>
																	<a href='cooper/screening/user/screening_list.html?recruitId=3162' class='btn btn-new1' style=''>
																		去筛选
																	</a>

																	<a href='Invite_UserWeb.aspx' class='btn btn-new1' style='margin: 16px 5px;'>
																		邀请
																	</a>

																</div>
																<!-- new end-->
															</div>
															<!-- /.row -->";
            }
            return back;


        }
    }
}
