using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using System.Data;
using DBUtility;
using Model;

namespace MysqlDAL
{
    public class MainPageMana:IMainPageMana
    {

        /// <summary>
        /// POJO类初始化SQL语句,此处仅针对Mysql
        /// 此处有八个语句分别对应八个数据
        /// </summary>
        private const String SQL_SELECT_PERSON = "select count(*) from person";
        private const String SQL_SELECT_COPR = "select count(*) from corp";
        private const String SQL_SELECT_CONTEST_PROBLEM = "select count(*) from contest_problem";
        private const String SQL_SELECT_MONEY = "select sum(money) from money";
        private const String SQL_SELECT_NEWPERSON = "select count(*) from person where time LIKE";
        private const String SQL_SELECT_NEWCORP = "select count(*) from corp where time LIKE";
        private const String SQL_SELECT_NEWCONTEST_PROBLEM = "select count(*) from contest_problem where time LIKE";
        private const String SQL_SELECT_NERMONEY = "select sum(money) from money where time LIKE ";

        /// <summary>
        /// POJO类 
        /// </summary>
        private MainPageManaInfo mpmInfo = null;

        public void Make()
        {
            this.mpmInfo = new MainPageManaInfo();
            //查询结果容器
            DataSet record = new DataSet();
            DataSet recordSum = new DataSet();

            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_PERSON, ref record);
            MySqlDBCore.Execute(SQL_SELECT_COPR, ref record);
            MySqlDBCore.Execute(SQL_SELECT_CONTEST_PROBLEM, ref record);   
            MySqlDBCore.Execute(SQL_SELECT_NEWPERSON + "'" + DateTime.Now.ToString("yyyy-MM-dd") + "%'", ref record);
            MySqlDBCore.Execute(SQL_SELECT_NEWCORP + "'" + DateTime.Now.ToString("yyyy-MM-dd") + "%'", ref record);
            MySqlDBCore.Execute(SQL_SELECT_NEWCONTEST_PROBLEM + "'" + DateTime.Now.ToString("yyyy-MM-dd") + "%'", ref record);

            MySqlDBCore.Execute(SQL_SELECT_MONEY, ref recordSum);
            MySqlDBCore.Execute(SQL_SELECT_NERMONEY + "'" + DateTime.Now.ToString("yyyy-MM-dd") + "%'", ref recordSum);

            //若记录存在，填充POJO
            if (record.Tables.Count != 0 && record.Tables[0].Rows.Count != 0)
            {
                this.mpmInfo.RegUserCount = record.Tables[0].Rows[0]["count(*)"].ToString();
                this.mpmInfo.RegClientCount = record.Tables[0].Rows[1]["count(*)"].ToString();
                this.mpmInfo.ChaCount = record.Tables[0].Rows[2]["count(*)"].ToString();
                this.mpmInfo.NewUserCount = record.Tables[0].Rows[3]["count(*)"].ToString();
                this.mpmInfo.NewClientCount = record.Tables[0].Rows[4]["count(*)"].ToString();
                this.mpmInfo.NewChaCount = record.Tables[0].Rows[5]["count(*)"].ToString();
            }
            if (recordSum.Tables.Count != 0 && recordSum.Tables[0].Rows.Count != 0)
            {
                this.mpmInfo.MoneyCount = recordSum.Tables[0].Rows[0]["sum(money)"].ToString();
                this.mpmInfo.NewMoneyCount = recordSum.Tables[0].Rows[1]["sum(money)"].ToString();
            }
        }

        public String getchaCount()
        {
            return this.mpmInfo.ChaCount;
        }

        public String getmoneyCount()
        {
            return this.mpmInfo.MoneyCount;
        }

        public String getnewChaCount()
        {
            return this.mpmInfo.NewChaCount;
        }

        public String getnewClientCount()
        {
            return this.mpmInfo.NewClientCount;
        }

        public String getnewMoneyCount()
        {
            return this.mpmInfo.NewMoneyCount;
        }

        public String getnewUserCount()
        {
            return this.mpmInfo.NewUserCount;
        }

        public String getregClientCount()
        {
            return this.mpmInfo.RegClientCount;
        }

        public String getregUserCount()
        {
            return this.mpmInfo.RegUserCount;
        }

        public MainPageManaInfo GetMainPageManaInfo()
        {
            return this.mpmInfo;
        }
    }
}
