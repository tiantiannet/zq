using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    public class Edit_tag_views
    {
        //获取数据类
        IEdit_tag_views dal = DALFactory.DataAccess.GetEdit_tag_views();

        /// <summary>
        /// 构造函数
        /// </summary>
        public Edit_tag_views()
        {
        }

        /// <summary>
        /// 增加公司标签类
        /// </summary>
        /// <param name="username">公司id</param>
        /// <param name="corp_cont1">公司标签</param>
        /// <returns></returns>
        public String edit_tag_view(String username,String corp_cont)
        {
            dal.Make(username);
            dal.InsertCorpCont(username,corp_cont);
            if (dal.getUsername() == username && dal.getCorp_cont() == corp_cont)
            {
                return "success";
            }
            else return "fail";
        
        }
    }
}
