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
    /// <summary>
    /// 数据提取类
    /// </summary>
    public class Corp_index :ICorp_index
    {
        String SQL_SELECT_ONE = "select * from corp";

        /// <summary>
        /// POJO类
        /// </summary>
        Corp_indexInfo corp_indexinfo = null;

        /// <summary>
        /// 构造函数
        /// </summary>
        public void Make(String username)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE, ref record);

            this.corp_indexinfo = new Corp_indexInfo();

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                //生成POJO类
                Corp_indexInfo ci = new Corp_indexInfo();

                ci.name = record.Tables[0].Rows[0]["corpname"].ToString();
                ci.phone = record.Tables[0].Rows[0]["corptelephone"].ToString();
                ci.email = record.Tables[0].Rows[0]["corpemail"].ToString();
                ci.qq = record.Tables[0].Rows[0]["corpqq"].ToString();
                ci.weixin = record.Tables[0].Rows[0]["corpweixin"].ToString();

                corp_indexinfo = ci;
            }
        }

        public Corp_indexInfo getInfo()
        {
            return this.corp_indexinfo;
        }
    }
}
