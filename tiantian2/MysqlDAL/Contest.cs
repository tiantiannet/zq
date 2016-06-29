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
    public class Contest : IDAL.IContest
    {
        String SQL_SELECT_ONE = "select * from contest";

        List<ContestInfo> r2 = new List<ContestInfo>();

        /// <summary>
        /// 构造函数
        /// </summary>
        public void Make()
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE, ref record);

            this.r2 = new List<ContestInfo>();

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                for (int i = 0; i < record.Tables[0].Rows.Count; i++)
                {
                    //生成POJO类
                    ContestInfo tal = new ContestInfo();

                    tal.id = record.Tables[0].Rows[i]["contest_id"].ToString();
                    tal.new_add = record.Tables[0].Rows[i]["new_add"].ToString();
                    tal.type = record.Tables[0].Rows[i]["type"].ToString();
                    tal.new_wancheng = record.Tables[0].Rows[i]["new_wancheng"].ToString();
                    tal.problems = "A+B Problem";
                    this.r2.Add(tal);
                }
            }
        }

        public List<ContestInfo> getInfo()
        {
            return this.r2;
        }
    }
}
