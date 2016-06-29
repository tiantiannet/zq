using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IRegister
    {
        void Make(String username, String password, String type);

        String GetResult();
    }
}
