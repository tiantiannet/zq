﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IClientMana
    {
        void Make();

        String getClientInfo();
        ClientManaInfo GetClientInfo();
    }
}