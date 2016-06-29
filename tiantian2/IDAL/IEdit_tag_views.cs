using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IEdit_tag_views
    {
        /// <summary>
        /// 构造数据
        /// </summary>
        /// <param name="username">公司名称</param>
        void Make(String username);

        /// <summary>
        /// 获取公司id
        /// </summary>
        /// <returns>公司id</returns>
        String getUsername();

        /// <summary>
        /// 获取公司标签
        /// </summary>
        /// <returns>公司标签1</returns>
        String getCorp_cont();

        /// <summary>
        /// 添加公司标签
        /// </summary>
        /// <param name="username">公司id</param>
        /// <param name="corp_cont1">公司标签</param>
        /// <returns></returns>
        void InsertCorpCont(String username, String corp_cont);
    }
}
