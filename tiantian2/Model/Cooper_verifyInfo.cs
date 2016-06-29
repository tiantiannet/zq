using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 验证公司信息POJO
    /// </summary>
    public class Cooper_verifyInfo
    {
        /// <summary>
        /// 公司id
        /// </summary>
        private String username;

        /// <summary>
        /// 公司名称
        /// </summary>
        private String corpname;

        /// <summary>
        /// 招聘人员手机号
        /// </summary>
        private String idphone;

        /// <summary>
        /// 公司固定电话
        /// </summary>
        private String corptelephone;

        /// <summary>
        /// 公司微信
        /// </summary>
        private String corpweixin;

        /// <summary>
        /// 公司所在省份
        /// </summary>
        private String selectprov;

        /// <summary>
        /// 公司所在行业
        /// </summary>
        private String selectindustry;

        public Cooper_verifyInfo()
        {
        
        }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="username">公司id</param>
        /// <param name="corpname">公司名</param>
        /// <param name="idphone">招聘人员手机号</param>
        /// <param name="corptelephone">公司电话</param>
        /// <param name="corpweixin">公司微信</param>
        /// <param name="selectprov">公司所在省</param>
        /// <param name="selectindustry">公司所在行业</param>
        public Cooper_verifyInfo(String username, String corpname, String idphone, String corptelephone, String corpweixin, String selectprov, String selectindustry)
        {
            this.username = username;
            this.corpname = corpname;
            this.idphone = idphone;
            this.corptelephone = corptelephone;
            this.corpweixin = corpweixin;
            this.selectprov = selectprov;
            this.selectindustry = selectindustry;
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
        /// corpname构造器
        /// </summary>
        public String Corpname
        {
            get { return corpname; }
            set { corpname = value; }
        }

        /// <summary>
        /// idphone构造器
        /// </summary>
        public String Idphone
        {
            get { return idphone; }
            set { idphone = value; }
        }

        /// <summary>
        /// corptelephone构造器
        /// </summary>
        public String Corptelephone
        {
            get { return corptelephone; }
            set { corptelephone = value; }
        }

        /// <summary>
        /// corpweixin构造器
        /// </summary>
        public String Corpweixin
        {
            get { return corpweixin; }
            set { corpweixin = value; }
        }

        /// <summary>
        /// selectprov构造器
        /// </summary>
        public String Selectprov
        {
            get { return selectprov; }
            set { selectprov = value; }
        }

        /// <summary>
        /// selectprov构造器
        /// </summary>
        public String Selectindustry
        {
            get { return selectindustry; }
            set { selectindustry = value; }
        }

    }
}
