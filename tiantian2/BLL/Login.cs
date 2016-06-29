using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    /// <summary>
    /// 登录业务类
    /// </summary>
    public class Login
    {
        //获取数据类
        ILogin dal = DALFactory.DataAccess.GetLogin();

        /// <summary>
        /// 构造函数
        /// </summary>
        public Login()
        {
        }

        /// <summary>
        /// 登录业务函数
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="password">用户密码</param>
        /// <returns>登录成功与否</returns>
        public String login(String username, String password)
        {
            dal.Make(username,password);

            if (dal.getUsername() == username && dal.getPassword() == password)
            {
                return "success";
            }
            else if ((dal.getUsername() == username))
            {
                return "password error";
            }
            else
                return "user not exist";
        }
        public String gettype()
        {
            return dal.gettype();
        }
    }
}
