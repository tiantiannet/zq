using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using DALFactory;

namespace BLL
{
    public class Corp_index
    {
        ICorp_index dal = DALFactory.DataAccess.GetCorp_index();

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='username'>公司id</param>
        public Corp_index(String username)
        {
            //初始化数据类实体
            dal.Make(username);
        }
        public String make()
        {
            String back = "";
            Model.Corp_indexInfo ci = dal.getInfo();

            back += @"<div class='col-md-3'>
									<div class='panel-user'>
										<div class='panel-heading'>
											<div class='panel-title'>
												<div class='media'>
													<a class='pull-left'>
														<img src='cooper_img/2542/5fec753b-afca-4387-ada6-39e9f250a53c.jpg' class='media-object'>
													</a>
													<div class='media-body'>
														<h4 class='media-heading'>
															<!-- <span class='welcome'>Hello</span> -->
															<span>" + ci.name + @"</span>
														</h4>
														<span class='text-muted'>
															<small>
																上次登录日期:
																<br>
																2016-04-20 13:52:46
															</small>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class='panel panel-outline'>
										<div class='panel-heading'>
											<h3 class='panel-title'>联系我们</h3>
										</div>
										<div class='panel-body'>
											<p>客服电话：" + ci.phone + @"</p>
											<p>客服邮箱：" + ci.email + @"</p>
											<p>客服微信：" + ci.weixin+ @"</p>
											<p>QQ交流群：" + ci.qq + @"</p>
										</div>
									</div>
				<!--  
				<button class='btn btn-info'>猿圈使用指南</button>
			-->
		</div>";
            return back;
        }
    }
}
