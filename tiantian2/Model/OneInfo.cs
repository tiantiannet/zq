using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 数据类实体的POJO类
    /// 是数据类实体在业务中所需要用的到数据库信息的，复制
    /// 所有属性都需要构造器，所有属性都能在构造函数中一次初始化，也可以不
    /// 完成后请前往MysqlDAL中完成数据类实体
    /// </summary>
    public class OneInfo
    {
        /// <summary>
        /// 学生名字
        /// </summary>
        private String name;

        /// <summary>
        /// 学生密码
        /// </summary>
        private String password;

        /// <summary>
        /// POJO类空构造函数，对于复杂POJO类使用
        /// </summary>
        public OneInfo()
        {
        }

        /// <summary>
        /// POJO类构造函数
        /// </summary>
        /// <param name="name">学生名字</param>
        /// <param name="password">学生密码</param>
        public OneInfo(String name, String password)
        {
            this.name = name;
            this.password = password;
        }

        /// <summary>
        /// 名字构造器
        /// </summary>
        public String Name
        {
            get { return name; }
            set { Name = value; }
        }

        /// <summary>
        /// 密码构造器
        /// </summary>
        public String Password
        {
            get { return password; }
            set { password = value; }
        }
    }
}
