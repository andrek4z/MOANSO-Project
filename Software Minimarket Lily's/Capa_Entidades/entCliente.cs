﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidades
{
    public class entCliente
    {
        public int idCliente { get; set; }
        public string razonSocial { get; set; }
        public int dni { get; set; }
        public int numero { get; set; }
        public string correo { get; set; }
        public DateTime fecRegCliente { get; set; }
        public bool estCliente { get; set; }
    }
}
