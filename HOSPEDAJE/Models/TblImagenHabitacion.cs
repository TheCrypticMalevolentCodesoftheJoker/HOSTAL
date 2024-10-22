using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblImagenHabitacion
{
    public int IdImagen { get; set; }

    public int IdHabitacion { get; set; }

    public string? UrlImagen { get; set; }

    public string? Descripcion { get; set; }

    public virtual TblHabitacion IdHabitacionNavigation { get; set; } = null!;
}
