using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class RegisterInfo
    {
        String result;

        public RegisterInfo(String result)
        {
            this.result = result;
        }

        public String Result
        {
            get { return result; }
            set { result = value; }
        }
    }
}
