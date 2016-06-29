using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MainPageManaInfo
    {
        private String regUserCount;
        private String regClientCount;
        private String chaCount;
        private String moneyCount;
        private String newUserCount;
        private String newClientCount;
        private String newChaCount;
        private String newMoneyCount;

        public MainPageManaInfo() 
        { 
        
        }

        public MainPageManaInfo(String regUserCount, String regClientCount, String chaCount, String moneyCount, String newUserCount, String newClientCount, String newChaCount, String newMoneyCount)
        {
            this.regUserCount = regUserCount;
            this.regClientCount = regClientCount;
            this.chaCount = chaCount;
            this.moneyCount = moneyCount;
            this.newUserCount = newUserCount;
            this.newClientCount = newClientCount;
            this.newChaCount = newChaCount;
            this.newMoneyCount = newMoneyCount;
        }

        public String RegUserCount
        { 
            get { return regUserCount; }
            set { regUserCount = value; }
        }

        public String RegClientCount
        {
            get { return regClientCount; }
            set { regClientCount = value; }
        }

        public String ChaCount
        {
            get { return chaCount; }
            set { chaCount = value; }
        }

        public String MoneyCount
        {
            get { return moneyCount; }
            set { moneyCount = value; }
        }

        public String NewUserCount
        {
            get { return newUserCount; }
            set { newUserCount = value; }
        }
        public String NewClientCount
        {
            get { return newClientCount; }
            set { newClientCount = value; }
        }
        public String NewChaCount
        {
            get { return newChaCount; }
            set { newChaCount = value; }
        }
        public String NewMoneyCount
        {
            get { return newMoneyCount; }
            set { newMoneyCount = value; }
        }

    }
}
