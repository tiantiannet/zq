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
    public class recuit2:IDAL.IRecuit2
    {
        String SQL_SELECT_ONE = "select * from probrems";

        List<recuit2Info> r2 = new List<recuit2Info>();

        /// <summary>
        /// 构造函数
        /// </summary>
        public void Make()
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE, ref record);

            this.r2 = new List<recuit2Info>();

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                for (int i = 0; i < record.Tables[0].Rows.Count; i++)
                {
                    //生成POJO类
                    recuit2Info tal = new recuit2Info();

                    tal.des = record.Tables[0].Rows[i]["des"].ToString();
                    tal.hard = record.Tables[0].Rows[i]["hard"].ToString();
                    tal.id = record.Tables[0].Rows[i]["id"].ToString();
                    tal.lable1 = record.Tables[0].Rows[i]["lable1"].ToString();
                    tal.lable2 = record.Tables[0].Rows[i]["lable2"].ToString();
                    tal.name = record.Tables[0].Rows[i]["name"].ToString();
                    tal.type = record.Tables[0].Rows[i]["type"].ToString();
                    tal.writer = record.Tables[0].Rows[i]["writer"].ToString();

                    this.r2.Add(tal);
                }
            }
        }

        public List<recuit2Info> getInfo()
        {
            return this.r2;
        }
    }
}
