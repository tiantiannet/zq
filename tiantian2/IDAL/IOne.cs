using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    /// <summary>
    /// 数据类实体接口
    /// 完成此处后请前往Model中完成数据类实体中用于承载纯数据的POJO类
    /// </summary>
    public interface IOne
    {
        /// <summary>
        /// 数据类实体的初始化函数
        /// </summary>
        /// <param name="password"></param>
        void Make(String password);

        /// <summary>
        /// 数据类实体的业务接口
        /// </summary>
        /// <returns>业务所需传参</returns>
        String getName();

        /// <summary>
        /// 返回业务类中的POJO类
        /// </summary>
        /// <returns>POJO类</returns>
        OneInfo GetOne();
    }
}
