using System;
using System.Collections.Generic;

namespace HOSPEDAJE.Models;

public partial class TblUsuario
{
    public int IdUsuario { get; set; }

    public int IdRol { get; set; }

    public string Nombre { get; set; } = null!;

    public string Correo { get; set; } = null!;

    public string Contraseña { get; set; } = null!;

    public string Estado { get; set; } = null!;

    public virtual TblRol IdRolNavigation { get; set; } = null!;

    public virtual TblDetalleUsuario? TblDetalleUsuario { get; set; }

    public virtual ICollection<TblMantenimientoLimpieza> TblMantenimientoLimpiezas { get; set; } = new List<TblMantenimientoLimpieza>();
}
