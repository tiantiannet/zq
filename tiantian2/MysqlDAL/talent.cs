using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using DBUtility;
using System.Data;

namespace MysqlDAL
{
    public class talent : Italent
    {
        String SQL_SELECT_ONE = "select * from person";

        /// <summary>
        /// POJO类
        /// </summary>
        List<talentInfo> talentinfo = null;

        /// <summary>
        /// 构造函数
        /// </summary>
        public void Make()
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE, ref record);

            this.talentinfo = new List<talentInfo>();

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                for (int i = 0; i < record.Tables[0].Rows.Count;i++ )
                {
                    //生成POJO类
                    talentInfo tal = new talentInfo();

                    tal.level = record.Tables[0].Rows[i]["userLevel"].ToString();
                    tal.name = record.Tables[0].Rows[i]["userrealyname"].ToString();
                    tal.price = record.Tables[0].Rows[i]["userprice"].ToString();
                    tal.skill = record.Tables[0].Rows[i]["userskill"].ToString();

                    this.talentinfo.Add(tal);
                }
            }
        }

        public List<talentInfo> getInfo()
        {
            return this.talentinfo;
        }
    }
}
