using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;
namespace BLL
{
    public class Register
    {
        //获取数据类
        IRegister dal = DALFactory.DataAccess.GetRegister();

        /// <summary>
        /// 构造函数
        /// </summary>
        public Register()
        {
        }

        /// <summary>
        /// 登录业务函数
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="password">用户密码</param>
        /// <returns>登录成功与否</returns>
        public String register(String username, String password, String type)
        {
            dal.Make(username,password,type);

            String msg = dal.GetResult();

            return msg;
        }
    }
}
