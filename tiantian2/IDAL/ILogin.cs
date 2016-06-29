using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ILogin
    {
        /// <summary>
        /// 构造数据
        /// </summary>
        /// <param name="username">用户名</param>
        void Make(String username,String password);

        /// <summary>
        /// 获取用户名
        /// </summary>
        /// <returns>用户名</returns>
        String getUsername();

        /// <summary>
        /// 获取用户密码
        /// </summary>
        /// <returns>用户密码</returns>
        String getPassword();

        /// <summary>
        /// 获取类型
        /// </summary>
        /// <returns>类型</returns>
        String gettype();
    }
}
