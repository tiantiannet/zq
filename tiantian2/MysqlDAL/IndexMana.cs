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
    public class IndexMana:IIndexMana
    {
        String SQL_SELECT_ONE = "select * from user where username =";

        /// <summary>
        /// POJO类
        /// </summary>
        IndexManaInfo indexManaInfo = null;

        /// <summary>
        /// 构造函数
        /// </summary>
        public void Make(String username)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE + "'" + username + "'", ref record);

            this.indexManaInfo = new IndexManaInfo();

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                //生成POJO类
                IndexManaInfo imi = new IndexManaInfo();
                imi.name = record.Tables[0].Rows[0]["username"].ToString();
                indexManaInfo = imi;
            }
        }

        public IndexManaInfo getInfo()
        {
            return this.indexManaInfo;
        }
    }
}
