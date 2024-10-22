using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblResena
{
    public int IdResena { get; set; }

    public int IdCliente { get; set; }

    public int IdHabitacion { get; set; }

    public string? Comentario { get; set; }

    public int? Calificacion { get; set; }

    public DateTime? FechaResena { get; set; }

    public virtual TblCliente IdClienteNavigation { get; set; } = null!;

    public virtual TblHabitacion IdHabitacionNavigation { get; set; } = null!;
}
