using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    public class ClientMana
    {
        IClientMana dal = DALFactory.DataAccess.GetClientMana();

        public ClientMana()
        {
            dal.Make();
        }

        public String getClientInfo()
        {
            return dal.getClientInfo();
        }

    }
}
