using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 公司标签数据POJO
    /// </summary>
    public class Edit_tag_viewsInfo
    {
        /// <summary>
        /// 公司id
        /// </summary>
        private String username;

        /// <summary>
        /// 公司标签
        /// </summary>
        private String corp_cont;

        public Edit_tag_viewsInfo() {
        }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="username">公司id</param>
        /// <param name="corp_cont">公司标签</param>
        public Edit_tag_viewsInfo(String username, String corp_cont)
        {
            this.username = username;
            this.corp_cont = corp_cont;
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
        /// corp_cont构造器
        /// </summary>
        public String Corp_cont
        {
            get { return corp_cont; }
            set { corp_cont = value; }
        }
    }
}
