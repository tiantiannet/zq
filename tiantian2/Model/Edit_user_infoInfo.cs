using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 个人用户数据POJO
    /// </summary>
    public class Edit_user_infoInfo
    {
        /// <summary>
        /// 用户id
        /// </summary>
        private String username;

        /// <summary>
        /// 用户真实姓名
        /// </summary>
        private String userrealyname;
        /// <summary>
        /// 用户年龄
        /// </summary>
        private String userage;

        /// <summary>
        /// 用户性别
        /// </summary>
        private String usersex;

        /// <summary>
        /// 用户技能
        /// </summary>
        private String userskill;

        /// <summary>
        /// 用户求职状态
        /// </summary>
        private String workWanterStatus;

        /// <summary>
        /// 用户工作省份
        /// </summary>
        private String userWorkprov;

        public Edit_user_infoInfo()
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="username">用户id</param>
        /// <param name="userrealyname">用户真实姓名</param>
        /// <param name="userage">用户年龄</param>
        /// <param name="usersex">用户性别</param>
        /// <param name="userskill">用户技术</param>
        /// <param name="workWanterStatus">用户求职状态</param>
        /// <param name="userWorkprov">用户工作省份</param>
        public Edit_user_infoInfo(String username, String userrealyname, String userage, String usersex, String userskill, String workWanterStatus, String userWorkprov)
        {
            this.username = username;
            this.userrealyname = userrealyname;
            this.usersex = usersex;
            this.userskill = userskill;
            this.workWanterStatus = workWanterStatus;
            this.userWorkprov = userWorkprov;
        }

        /// <summary>
        /// username构造器
        /// </summary>
        public String Username
        {
            get { return username; }
            set { username = value; }            
        }
        /// <summary>
        /// userrealyname构造器
        /// </summary>
        public String Userrealyname
        {
            get { return userrealyname; }
            set { userrealyname = value; }
        }

        /// <summary>
        /// userage构造器
        /// </summary>
        public String Userage
        {
            get { return userage; }
            set { userage = value; }
        }

        /// <summary>
        /// usersex构造器
        /// </summary>
        public String Usersex
        {
            get { return usersex; }
            set { usersex = value; }
        }

        /// <summary>
        /// userskill构造器
        /// </summary>
        public String Userskill
        {
            get { return userskill; }
            set { userskill = value; }
        }

        /// <summary>
        /// workWanterStatus构造器
        /// </summary>
        public String WorkWanterStatus
        {
            get { return workWanterStatus; }
            set { workWanterStatus = value; }
        }

        /// <summary>
        /// userWorkprov构造器
        /// </summary>
        public String UserWorkprov
        {
            get { return userWorkprov; }
            set { userWorkprov = value; }
        }
    }
}
