using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;

namespace BLL
{
    public class challenge
    {
        IChallenge dal = DALFactory.DataAccess.getChallenge();

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='oneId'>数据类实体初始化所需传参</param>
        public challenge()
        {
            //初始化数据类实体
            dal.make();
        }

        public String make()
        {
            String back = "";
            List<challengeInfo> ti = dal.getInfo();

            for (int i = 0; i < ti.Count; i++)
            {
                String level = "";

                //难度
                for (int j = 0; j < Int32.Parse(ti[i].hard); j++)
                {
                    level += "<span class='glyphicon glyphicon-star'></span>";
                }

                //标签
                String lableStr = "";
                if (ti[i].lable != null)
                {
                    String[] lable = ti[i].lable.Split(',');
                    for (int j = 0; j < lable.Count(); j++)
                    {
                        lableStr += "<li>" + lable[j] + @"</li>";
                    }
                }

                back += @"<div class='col-xs-12 col-md-4 col-lg-3'>
					<section id='Section2'>
						<div class='panel panel-default shadow-effect'>
							<div class='col-xs-12 panel-header'>
								<div class='pull-left'>
									<h4 class='line-control'>
										<a href='#'>[高级]" + ti[i].type + @"工程师</a>
									</h4>
									<h4 class='line-control' style='min-height:18px;'>
										<a href='#'>" + ti[i].real + @"</a>
									</h4>
								</div>
								<div class='pull-right client-info hidden-md'>
									<span class='percent text-danger'>
										<img class='img-circle' style='width:60px;height:60px' src='img/cooper_img/99ff536a-d2ff-4954-8688-ff07181aef5c.jpg'>
									</span>
								</div>
									
									<span class='hot-tag'>推荐</span>
									
							</div>
	
							<div class='panel-body '>
								<ul class='list-unstyled'>
									<li>职位诱惑：</li>
									<li style='min-height:33px;'>
										<ul class='companyTags'>
												
												
												" + lableStr + @"
												
										</ul>
									</li>
									<li>试题数量：" + ti[i].num + @"</li>
									<li>
										挑战难度：
											
											" + level + @"
											
									</li>
									<li>
										<span class='glyphicon glyphicon-user'></span>
										" + ti[i].ready + @"人已接受挑战
									</li>
								</ul>
	
							</div>
							<!-- /.panel-body -->
							<div class='panel-footer align-center'>
								<a href='user/accepted_recruit.html?recruitId=3046'>
									<button class='btn btn-new1' onclick='fdisabled(this)'>接受挑战</button>
								</a>
							</div>
							<!-- /.panel-footer -->
						</div>
					</section>
				</div>";

            }

            return back;
        }
    }
}
