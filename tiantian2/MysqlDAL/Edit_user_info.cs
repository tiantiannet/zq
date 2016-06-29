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
    public class Edit_user_info :IEdit_user_info
    {
        /// <summary>
        /// POJO类初始化SQL语句,此处仅针对Mysql
        /// </summary>
        private const String SQL_SELECT_Edit_user_info = "select * from person where username =  ";

        private const String SQL_UPDATE_Edit_user_info = @"UPDATE person set userage ='{1}' and userrealyname = '{2}' and usersex = '{3}' and userskill = '{4}' and workWantedStatus = '{5}' and userWorkprov ={6}";
        /// <summary>
        /// POJO类 
        /// </summary>
        private Edit_user_infoInfo edit_user_infoInfo = null;

        /// <summary>
        /// 初始化数据类实体，填充POJO类
        /// </summary>
        /// <param name="username">初始化索引</param>
        public void Make(String username)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            String sss = SQL_SELECT_Edit_user_info +  "'" + username + "'";
            MySqlDBCore.Execute(sss, ref record);
            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                //生成POJO类
                Edit_user_infoInfo uci = new Edit_user_infoInfo();

                uci.Userage = record.Tables[0].Rows[0]["userage"].ToString();
                uci.Username = record.Tables[0].Rows[0]["username"].ToString();
                uci.Userrealyname = record.Tables[0].Rows[0]["userrealyname"].ToString();
                uci.Userskill = record.Tables[0].Rows[0]["userskill"].ToString();
                uci.Usersex = record.Tables[0].Rows[0]["usersex"].ToString();
                uci.WorkWanterStatus = record.Tables[0].Rows[0]["workWantedStatus"].ToString();
                uci.UserWorkprov = record.Tables[0].Rows[0]["userWorkprov"].ToString();

                this.edit_user_infoInfo = uci;
            }
            else this.edit_user_infoInfo = new Edit_user_infoInfo();
        }

        public void InsertUserInfo(String username, String userrealyname, String userage, String usersex, String userskill, String workWanterStatus, String userWorkprov)
        {
            if (userage.Trim().Length == 0)
                userage = "0";
            //String str = String.Format(SQL_UPDATE_Edit_user_info, username, userage, userrealyname, usersex, userskill, workWanterStatus, userWorkprov);

            String sql = "";

            sql = "UPDATE person set userrealyname = '" + userrealyname + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set userage = '" + userage + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set usersex = '" + usersex + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set userskill = '" + userskill + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set workWanterStatus = '" + workWanterStatus + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set userWorkprov = '" + userWorkprov + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);
            //str += " where username= " + username + " ";

        }

        /// <summary>
        /// 获取用户id
        /// </summary>
        /// <returns>用户id</returns>
        public String getUsername()
        {
            return this.edit_user_infoInfo.Username;
        }

        /// <summary>
        /// 获取用户真实姓名
        /// </summary>
        /// <returns>用户真实姓名</returns>
        public String getUserrealyname()
        {
            return this.edit_user_infoInfo.Userrealyname;
        }

        /// <summary>
        /// 获取用户年龄
        /// </summary>
        /// <returns>用户年龄</returns>
        public String getUserage()
        {
            return this.edit_user_infoInfo.Userage;
        }

        /// <summary>
        /// 获取用户性别
        /// </summary>
        /// <returns>用户性别</returns>
        public String getUsersex()
        {
            return this.edit_user_infoInfo.Usersex;
        }

        /// <summary>
        /// 获取用户技能
        /// </summary>
        /// <returns>用户技能</returns>
        public String getUserskill()
        {
            return this.edit_user_infoInfo.Userskill;
        }

        /// <summary>
        /// 获取用户求职状态
        /// </summary>
        /// <returns>用户求职状态</returns>
        public String getWorkWanterStatus()
        {
            return this.edit_user_infoInfo.WorkWanterStatus;
        }

        /// <summary>
        /// 获取用户工作省份
        /// </summary>
        /// <returns>用户工作省份</returns>
        public String getUserWorkprov()
        {
            return this.edit_user_infoInfo.UserWorkprov;
        }
    }
}