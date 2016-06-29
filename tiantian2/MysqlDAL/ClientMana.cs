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
    public class ClientMana : IClientMana
    {
        private const String SQL_SELECT_ALL_CLIENT = "select * from corp";
        private ClientManaInfo cmInfo = null;

        public void Make()
        {
            DataSet record = new DataSet();
            MySqlDBCore.Execute(SQL_SELECT_ALL_CLIENT, ref record);

            if (record.Tables.Count != 0 && record.Tables[0].Rows.Count != 0)
            {
                String result = "";
                for (int i = 0; i < record.Tables[0].Rows.Count; i++)
                {
                    result += "<tr>";
                    result += "<td>" + record.Tables[0].Rows[i]["id"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["corpname"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["username"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["corpemail"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["corptelephone"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["idphone"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["corpweixin"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["selectprov"].ToString() + "</td>";

                    result += "<td>";
                    if (record.Tables[0].Rows[i]["corpemail"].ToString() != null)
                        result += "<span>邮箱已验证</span>";
                    else
                        result += "<span>邮箱未验证</span>";

                    if (record.Tables[0].Rows[i]["corp_content"].ToString() != null)
                        result += "<span>资料已填写</span>";
                    else
                        result += "<span>资料未填写</span>";

                    if (record.Tables[0].Rows[i]["corptelephone"].ToString() != null)
                        result += "<span>手机已验证</span>";
                    else
                        result += "<span>手机未验证</span>";
                    result += "</td>";

                    result += "<td>未审核</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["time"].ToString() + "</td>";
                    result += "<td><button type='button' class='btn btn-primary btn-xs'>查看挑战</button><button type='button' class='btn btn-success btn-xs'>详情</button><button type='button' class='btn btn-danger btn-xs'>删除</button><button type='button' class='btn btn-primary btn-xs'>编辑备注</button></td>";
                    result += "<td>" + record.Tables[0].Rows[i]["memo"].ToString() + "</td>";
                    result += "</tr>";
                }
                this.cmInfo = new ClientManaInfo();
                cmInfo.ClientInfo = result;
            }
        }
        public ClientManaInfo GetClientInfo()
        {
            return this.cmInfo;
        }

        public String getClientInfo()
        {
            return this.cmInfo.ClientInfo;
        }
    }
}
