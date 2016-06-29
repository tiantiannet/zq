using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IEdit_user_info
    {
        /// <summary>
        /// 构造数据
        /// </summary>
        /// <param name="username">公司名称</param>
        void Make(String username);

        /// <summary>
        /// 获取用户id
        /// </summary>
        /// <returns>用户id</returns>
        String getUsername();

        /// <summary>
        /// 获取用户真实姓名
        /// </summary>
        /// <returns>用户真实姓名</returns>
        String getUserrealyname();

        /// <summary>
        /// 获取用户年龄
        /// </summary>
        /// <returns>用户年龄</returns>
        String getUserage();

        /// <summary>
        /// 获取用户性别
        /// </summary>
        /// <returns>用户性别</returns>
        String getUsersex();

        /// <summary>
        /// 获取用户技能
        /// </summary>
        /// <returns>用户技能</returns>
        String getUserskill();

        /// <summary>
        /// 获取用户求职状态
        /// </summary>
        /// <returns>用户求职状态</returns>
        String getWorkWanterStatus();

        /// <summary>
        /// 获取用户工作省份
        /// </summary>
        /// <returns>用户工作省份</returns>
        String getUserWorkprov();

        /// <summary>
        /// 添加用户信息
        /// </summary>
        /// <param name="username">用户id</param>
        /// <param name="userrealyname">用户真实姓名</param>
        /// <param name="userage">用户年龄</param>
        /// <param name="usersex">用户性别</param>
        /// <param name="userskill">用户技术</param>
        /// <param name="workWanterStatus">用户求职状态</param>
        /// <param name="userWorkprov">用户工作省份</param>
        /// <returns></returns>
        void InsertUserInfo(String username, String userrealyname, String userage, String usersex, String userskill, String workWanterStatus, String userWorkprov);
    }
}
