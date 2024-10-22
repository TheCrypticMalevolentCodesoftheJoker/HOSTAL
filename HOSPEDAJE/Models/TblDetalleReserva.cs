using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblDetalleReserva
{
    public int IdDetalleReserva { get; set; }

    public int IdReserva { get; set; }

    public int CantidadPersonas { get; set; }

    public string? TipoServicio { get; set; }

    public decimal? CostoServicio { get; set; }

    public decimal? PagoParcial { get; set; }

    public DateTime? FechaPago { get; set; }

    public string EstadoPago { get; set; } = null!;

    public DateTime? FechaUltimaModificacion { get; set; }

    public virtual TblReserva IdReservaNavigation { get; set; } = null!;
}
