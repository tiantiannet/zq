using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    public class WeixinUser
    {
        IWeixinUser dal = DALFactory.DataAccess.GetWeixinUser();

        public WeixinUser()
        {
            dal.Make();
        }

        public String getWeixinUserInfo()
        {
            return dal.getWeixinUserInfo();
        }

    }
}
