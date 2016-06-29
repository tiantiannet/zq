using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    public class MainPageMana
    {
        IMainPageMana dal = DALFactory.DataAccess.GetMainPageMana();
        /// <summary>
        /// 构造函数
        /// </summary>
        public MainPageMana()
        {
            dal.Make();        
        }
        /// <summary>
        /// 获取普通用户数量
        /// </summary>
        /// <returns></returns>
        public String getregUserCount()
        {
            return dal.getregUserCount();
        }
        /// <summary>
        /// 获取注册企业数量
        /// </summary>
        /// <returns></returns>
        public String getregClientCount()
        {
            return dal.getregClientCount();
        }
        /// <summary>
        /// 获取挑战数量
        /// </summary>
        /// <returns></returns>
        public String getchaCount()
        {
            return dal.getchaCount();
        }
        /// <summary>
        /// 获取挣的钱数量
        /// </summary>
        /// <returns></returns>
        public String getmoneyCount()
        {
            return dal.getmoneyCount();
        }
        /// <summary>
        /// 获取新增加的普通用户数
        /// </summary>
        /// <returns></returns>
        public String getnewUserCount()
        {
            return dal.getnewUserCount();
        }
        /// <summary>
        /// 获取新增加的企业用户数
        /// </summary>
        /// <returns></returns>
        public String getnewClientCount()
        {
            return dal.getnewClientCount();
        }
        /// <summary>
        /// 获取新增加的挑战数
        /// </summary>
        /// <returns></returns>
        public String getnewChaCount()
        {
            return dal.getnewChaCount();
        }
        /// <summary>
        /// 获取新增加的钱数
        /// </summary>
        /// <returns></returns>
        public String getnewMoneyCount()
        {
            return dal.getnewMoneyCount();
        }
    }
}
