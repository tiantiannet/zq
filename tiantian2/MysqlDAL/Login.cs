using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using System.Data;
using DBUtility;
using Model;

namespace MysqlDAL
{
    /// <summary>
    /// 数据提取类
    /// </summary>
    public class Login:ILogin
    {
        /// <summary>
        /// POJO类初始化SQL语句,此处仅针对Mysql
        /// </summary>
        private const String SQL_SELECT_LOGIN = "select * from user where username =  ";

        /// <summary>
        /// POJO类 
        /// </summary>
        private LoginInfo loginInfo = null;

        /// <summary>
        /// 初始化数据类实体，填充POJO类
        /// </summary>
        /// <param name="username">初始化索引</param>
        public void Make(String username,String password)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_LOGIN + "'" + username + "' and password = '"+password+"'", ref record);

            //若记录存在，填充POJO
            if (record.Tables.Count != 0 && record.Tables[0].Rows.Count != 0)
            {
                //生成POJO类
                this.loginInfo = new LoginInfo(username, record.Tables[0].Rows[0]["password"].ToString(), record.Tables[0].Rows[0]["type"].ToString());
            }
            else
            {
                this.loginInfo = new LoginInfo("","","");
            }
        }

        /// <summary>
        /// 获取用户名
        /// </summary>
        /// <returns>用户名</returns>
        public String getUsername()
        {
            return this.loginInfo.Username;
        }

        /// <summary>
        /// 获取用户密码
        /// </summary>
        /// <returns>用户密码</returns>
        public String getPassword()
        {
            return this.loginInfo.Password;
        }

        public String gettype()
        {
            return this.loginInfo.Type;
        }
    }

}
