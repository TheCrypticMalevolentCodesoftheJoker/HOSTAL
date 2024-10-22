using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblEstado
{
    public int IdEstado { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Descripcion { get; set; }

    public virtual ICollection<TblHabitacion> TblHabitacions { get; set; } = new List<TblHabitacion>();
}
