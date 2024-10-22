using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblHabitacion
{
    public int IdHabitacion { get; set; }

    public int IdCategoria { get; set; }

    public int IdEstado { get; set; }

    public string Numero { get; set; } = null!;

    public decimal Precio { get; set; }

    public string? Descripcion { get; set; }

    public virtual TblCategorium IdCategoriaNavigation { get; set; } = null!;

    public virtual TblEstado IdEstadoNavigation { get; set; } = null!;

    public virtual TblDetalleHabitacion? TblDetalleHabitacion { get; set; }

    public virtual ICollection<TblImagenHabitacion> TblImagenHabitacions { get; set; } = new List<TblImagenHabitacion>();

    public virtual ICollection<TblMantenimientoLimpieza> TblMantenimientoLimpiezas { get; set; } = new List<TblMantenimientoLimpieza>();

    public virtual ICollection<TblReporteProblema> TblReporteProblemas { get; set; } = new List<TblReporteProblema>();

    public virtual ICollection<TblResena> TblResenas { get; set; } = new List<TblResena>();

    public virtual ICollection<TblReserva> TblReservas { get; set; } = new List<TblReserva>();
}
