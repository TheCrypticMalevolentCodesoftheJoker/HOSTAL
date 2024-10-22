using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblCategorium
{
    public int IdCategoria { get; set; }

    public string NombreCategoria { get; set; } = null!;

    public string? Descripcion { get; set; }

    public virtual ICollection<TblHabitacion> TblHabitacions { get; set; } = new List<TblHabitacion>();
}
