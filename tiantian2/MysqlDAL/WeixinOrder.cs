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
    public class WeixinOrder :IWeixinOrder
    {
        private const String SQL_SELECT_ALL_WEIXINORDER = "select * from weixin_order";
        private WeixinOrderInfo wxoInfo = null;

        public void Make()
        {
            DataSet record = new DataSet();
            MySqlDBCore.Execute(SQL_SELECT_ALL_WEIXINORDER, ref record);

            if (record.Tables.Count != 0 && record.Tables[0].Rows.Count != 0)
            {
                String result = "";
                for (int i = 0; i < record.Tables[0].Rows.Count; i++)
                {
                    result += "<tr>";
                    result += "<td>" + record.Tables[0].Rows[i]["id"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["ordernum"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["ordername"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["ip"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["charge"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["paytime"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["username"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["offerdirection"].ToString() + "</td>";
                    result += "</tr>";
                }
                this.wxoInfo = new WeixinOrderInfo();
                wxoInfo.WeixinOrder = result;
            }
        }
        public WeixinOrderInfo GetWeixinOrderInfo()
        {
            return this.wxoInfo;
        }

        public String getWeixinOrderInfo()
        {
            return this.wxoInfo.WeixinOrder;
        }
    }
}
