using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Data;
using DBUtility;

namespace MysqlDAL
{
    public class challenge:IChallenge
    {
        public String SQL_SELECT_ONE = "select * from contest";

        public List<challengeInfo> info = new List<challengeInfo>();


        /// <summary>
        /// 构造
        /// </summary>
        public void make()
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE, ref record);

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                for (int i = 0; i < record.Tables[0].Rows.Count; i++)
                {
                    //生成POJO类
                    challengeInfo tal = new challengeInfo();

                    tal.id = record.Tables[0].Rows[i]["contest_id"].ToString();
                    tal.hard = record.Tables[0].Rows[i]["hard"].ToString();
                    tal.type = record.Tables[0].Rows[i]["type"].ToString();
                    tal.ready = record.Tables[0].Rows[i]["new_add"].ToString();
                    tal.ready = record.Tables[0].Rows[i]["username"].ToString();

                    //查询实体数量
                    String sql = "SELECT count(problem_id) num from contest_problem where contest_id = '" + tal.id +"'";
                    //查询结果容器
                    DataSet record2 = new DataSet();
                    //从索引中补全语句
                    MySqlDBCore.Execute(sql, ref record2);
                    if (record2.Tables.Count == 1 && record2.Tables[0].Rows.Count != 0)
                    {
                        tal.num = record2.Tables[0].Rows[0]["num"].ToString();
                    }

                    //查询公司id
                    String sqltemp = "SELECT username from contest where contest_id = '" + tal.id + "'";
                    record2 = new DataSet();
                    MySqlDBCore.Execute(sqltemp, ref record2);
                    if (record2.Tables.Count == 1 && record2.Tables[0].Rows.Count != 0)
                    {
                        tal.name = record2.Tables[0].Rows[0]["username"].ToString();
                    }

                    //查询公司信息 
                    String sql3 = "SELECT corpname , corp_content  from corp where username = '" + tal.name + "'";
                    //查询结果容器
                    DataSet record3 = new DataSet();
                    //从索引中补全语句
                    MySqlDBCore.Execute(sql3, ref record3);
                    if (record3.Tables.Count == 1 && record3.Tables[0].Rows.Count != 0)
                    {
                        tal.real = record3.Tables[0].Rows[0]["corpname"].ToString();
                        tal.lable = record3.Tables[0].Rows[0]["corp_content"].ToString();
                    }

                    this.info.Add(tal);
                }
            }
        }

        public List<challengeInfo> getInfo()
        {
            return this.info;
        }
    }
}
