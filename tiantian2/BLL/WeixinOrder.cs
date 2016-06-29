using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    public class WeixinOrder
    {
        IWeixinOrder dal = DALFactory.DataAccess.GetWeixinOrder();

        public WeixinOrder()
        {
            dal.Make();
        }

        public String getWeixinOrderInfo()
        {
            return dal.getWeixinOrderInfo();
        }

    }
}