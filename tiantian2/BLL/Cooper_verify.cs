using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using DALFactory;

namespace BLL
{
    /// <summary>
    /// 公司信息验证类
    /// </summary>
    public class Cooper_verify
    {
        //获取数据类
        ICooper_verify dal = DALFactory.DataAccess.GetCooper_verify();
        /// <summary>
        /// 构造函数
        /// </summary>
        public Cooper_verify()
        {
        }

        /// <summary>
        /// 公司信息验证业务类
        /// </summary>
        /// <param name="corpname">公司名</param>
        /// <param name="recruittelehone">招聘负责人电话</param>
        /// <param name="corptelehone">公司电话</param>
        /// <param name="corpweixin">公司微信</param>
        /// <param name="selectprov">公司所在省</param>
        /// <param name="selectcity">公司所在城市</param>
        /// <param name="selectdist">公司所在区</param>
        /// <param name="selectindustry">公司所在行业</param>
        /// <returns></returns>
        public String cooper_verify(String username,String corpname,String idphone,String corptelephone, String corpweixin, String selectprov, String selectindustry)
        {
            dal.Make(username);
            dal.InsertCorp(username, corpname, corpname, corptelephone, corpweixin, selectprov, selectindustry);
            dal.Make(username);
            if (dal.getUsername() == username  && dal.getCorpname() == corpname && dal.getIdphone() == idphone && dal.getCorptelephone() == corptelephone && dal.getCorpweixin() == corpweixin && dal.getSelectprov() == selectprov && dal.getSelectindustry() == selectindustry)
            {
                return "success";
            }
            else return "fail";
        }
    }
}
