using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ICooper_verify
    {
        /// <summary>
        /// 构造数据
        /// </summary>
        /// <param name="username">公司名称</param>
        void Make(String username);

        /// <summary>
        /// 获取公司id
        /// </summary>
        /// <returns></returns>
        String getUsername();

        /// <summary>
        /// 获取公司名称
        /// </summary>
        /// <returns>公司名称</returns>
        String getCorpname();

        /// <summary>
        /// 获取招聘人员手机号
        /// </summary>
        /// <returns>招聘人员手机号</returns>
        String getIdphone();

        /// <summary>
        /// 获取公司固定电话
        /// </summary>
        /// <returns>公司固定电话</returns>
        String getCorptelephone();

        /// <summary>
        /// 获取公司微信
        /// </summary>
        /// <returns>公司微信</returns>
        String getCorpweixin();

        /// <summary>
        /// 获取公司所在省份
        /// </summary>
        /// <returns>公司所在省份</returns>
        String getSelectprov();

        /// <summary>
        /// 获取公司所在行业
        /// </summary>
        /// <returns>公司所在行业</returns>
        String getSelectindustry();

        /// <summary>
        /// 添加公司信息
        /// </summary>
        /// <param name="username">公司id</param>
        /// <param name="corpname">公司名称</param>
        /// <param name="idphone">招聘人员手机号</param>
        /// <param name="corptelephone">公司电话</param>
        /// <param name="corpweixin">公司微信</param>
        /// <param name="selectprov">公司所在省份</param>
        /// <param name="selectindustry">公司所在行业</param>
        /// <returns></returns>
        void InsertCorp(String username,String corpname, String idphone, String corptelephone, String corpweixin, String selectprov, String selectindustry);
    }
}
