﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidades
{
    public class entProducto
    {
        public int idProducto { get; set; }
        public string nombre { get; set; }
        public string cantidad { get; set; }
        public decimal precio { get; set; }
        public bool estado { get; set; } // Para saber si está habilitado o inhabilitado
    }
}
