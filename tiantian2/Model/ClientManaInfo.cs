using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ClientManaInfo
    {
        private String clientManaInfo;

        public ClientManaInfo()
        {
 
        }

        public ClientManaInfo(String clientManaInfo)
        {
            this.clientManaInfo = clientManaInfo;
        }

        public String ClientInfo
        {
            get { return clientManaInfo; }
            set { clientManaInfo = value; }
        }
    }
}
