﻿using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblCliente
{
    public int IdCliente { get; set; }

    public string Nombre { get; set; } = null!;

    public string Correo { get; set; } = null!;

    public string Contraseña { get; set; } = null!;

    public string Estado { get; set; } = null!;

    public DateTime? FechaRegistro { get; set; }

    public DateTime? FechaUltimaModificacion { get; set; }

    public virtual TblDetalleCliente? TblDetalleCliente { get; set; }

    public virtual ICollection<TblListaEspera> TblListaEsperas { get; set; } = new List<TblListaEspera>();

    public virtual ICollection<TblReporteProblema> TblReporteProblemas { get; set; } = new List<TblReporteProblema>();

    public virtual ICollection<TblResena> TblResenas { get; set; } = new List<TblResena>();

    public virtual ICollection<TblReserva> TblReservas { get; set; } = new List<TblReserva>();
}
