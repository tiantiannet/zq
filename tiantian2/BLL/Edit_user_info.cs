using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using DALFactory;

namespace BLL
{
    public class Edit_user_info
    {
        //获取数据类
        IEdit_user_info dal = DALFactory.DataAccess.GetEdit_user_info();

        /// <summary>
        /// 构造函数
        /// </summary>
        public Edit_user_info()
        {
        }
        /// <summary>
        /// 增加公司标签类
        /// </summary>
        /// <param name="username">用户id</param>
        /// <param name="userrealyname">用户真实姓名</param>
        /// <param name="userage">用户年龄</param>
        /// <param name="usersex">用户性别</param>
        /// <param name="userskill">用户技术</param>
        /// <param name="workWanterStatus">用户求职状态</param>
        /// <param name="userWorkprov">用户工作省份</param>
        /// <returns></returns>
        public String edit_user_info(String username, String userrealyname, String userage, String usersex, String userskill, String workWanterStatus, String userWorkprov)
        {
            dal.Make(username);
            dal.InsertUserInfo(username, userrealyname, userage, usersex, userskill, workWanterStatus, userWorkprov);
            dal.Make(username);
            if (dal.getUsername() == username && dal.getUserrealyname() == userrealyname && dal.getUserage() == userage && dal.getUsersex() == usersex && dal.getUserskill() == userskill && dal.getWorkWanterStatus() == workWanterStatus && dal.getUserWorkprov() == userWorkprov)
            {
                return "success";
            }
            else return "fail";
        
        }
    }
}
