using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using DBUtility;
using Model;
using System.Data;

namespace MysqlDAL
{
    public class User_center : IUser_center
    {
        String SQL_SELECT_ONE = "select * from person";

        /// <summary>
        /// POJO类
        /// </summary>
        User_centerInfo usercenterinfo = null;

        /// <summary>
        /// 构造函数
        /// </summary>
        public void Make(String username)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE, ref record);

            this.usercenterinfo = new User_centerInfo();

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                    //生成POJO类
                    User_centerInfo uci = new User_centerInfo();

                    uci.name = record.Tables[0].Rows[0]["userrealyname"].ToString();
                    uci.price = record.Tables[0].Rows[0]["userprice"].ToString();
                    uci.email = record.Tables[0].Rows[0]["useremail"].ToString();
                    uci.phone = record.Tables[0].Rows[0]["userskill"].ToString();
                    uci.sex = record.Tables[0].Rows[0]["usersex"].ToString();
                    uci.wantedStatus = record.Tables[0].Rows[0]["workWantedStatus"].ToString();
                    uci.work_prov = record.Tables[0].Rows[0]["userWorkprov"].ToString();
                    uci.level = record.Tables[0].Rows[0]["userLevel"].ToString();
                    uci.age = record.Tables[0].Rows[0]["userage"].ToString();

                    usercenterinfo = uci;
            }
        }

        public User_centerInfo getInfo()
        {
            return this.usercenterinfo;
        }
    }
}
