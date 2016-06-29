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
    public class recuit2
    {
         IRecuit2 dal = DALFactory.DataAccess.GetRecuit2();

         public int num = 0;

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='oneId'>数据类实体初始化所需传参</param>
         public recuit2()
        {
            //初始化数据类实体
            dal.Make();
        }

         public String make()
         {
             String back = "";
             List<recuit2Info> ti = dal.getInfo();

             num = ti.Count;

             for (int i = 0; i < ti.Count; i++)
             {
                 String level = "";

                 for (int j = 0; j < Int32.Parse(ti[i].hard); j++)
                 {
                     level += "<span class='glyphicon glyphicon-star'></span>";
                 }

                 back += @"<div class='col-md-4'>
														<div class='panel panel-default project'>
															<div class='panel-body' style='padding-bottom:0;'>
																<div class='row'>
																	<div class='col-xs-12'>
																		<div class='pull-left'>
																			<h4>
																				<a href='javascript:;'>" + ti[i].name + @"</a>
																			</h4>
																			<h5 class='text-muted'>by " + ti[i].writer + @"</h5>
																		</div>
																		<div class='pull-right client-info'>
                                                                        <input id='CheckBox1' type='checkbox' name='CheckBox" + i + @"' /><label for='CheckBox1'>添加</label>
																		</div>
																	</div>
																	<div class='col-md-12' style='min-height:68px;'>
																		<ul class='companyTags'>



																			<li>" + ti[i].lable1 + @"</li>

																			<li>" + ti[i].lable2 + @"</li>


																		</ul>
																	</div>
																</div>
															</div>
															<div class='panel-footer'>
																<div class='row'>
																	<div class='col-sm-4'>
																		<span class='small muted'>项目难度</span>
																	</div>
																	<div class='col-sm-8'>
																		<p>

																			" + level + @"

																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>";
             }
             return back;


         }

         public int getNum()
         {
             return this.num;
         }
    }
}
