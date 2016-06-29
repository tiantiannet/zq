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
    /// 网页业务类
    /// 负责网页的主要业务信息来往并维护着数据类
    /// 完成此处后请前往工厂方法DALFactory补充工厂函数
    /// </summary>
    public class One
    {
        /// <summary>
        /// 数据类实体
        /// 通过工厂方法获取
        /// </summary>
        IOne dal = DALFactory.DataAccess.GetOne();

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="oneId">数据类实体初始化所需传参</param>
        public One(String oneId)
        {
            //初始化数据类实体
            dal.Make(oneId);
        }

        /// <summary>
        /// 业务函数
        /// </summary>
        /// <returns>One的名字</returns>
        public String getName()
        {
            return dal.getName();
        }
    }
}
