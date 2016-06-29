using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class WeixinOrderInfo
    {
        private String weixinOrderInfo;

        public WeixinOrderInfo()
        {

        }

        public WeixinOrderInfo(String weixinOrderInfo)
        {
            this.weixinOrderInfo = weixinOrderInfo;
        }

        public String WeixinOrder
        {
            get { return weixinOrderInfo; }
            set { weixinOrderInfo = value; }
        }
    }
}

