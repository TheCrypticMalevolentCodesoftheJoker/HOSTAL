namespace HOSPEDAJE.Areas.ClienteArea.DTOs
{
    public class ClienteDTO
    {
        public string Nombre { get; set; }
        public string Correo { get; set; }
        public string Contraseña { get; set; }
        public string Estado { get; set; }
        public DateTime? FechaRegistro { get; set; }
        public DateTime? FechaUltimaModificacion { get; set; }
    }
}
