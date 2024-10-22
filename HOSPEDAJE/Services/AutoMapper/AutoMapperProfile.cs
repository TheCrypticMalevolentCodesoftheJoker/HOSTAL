using AutoMapper;
using HOSPEDAJE.Areas.ClienteArea.DTOs;
using HOSPEDAJE.Areas.HabitacionArea.DTOs;
using HOSPEDAJE.Areas.ListaEsperaArea.DTOs;
using HOSPEDAJE.Areas.MantenimientoLimpiezaArea.DTOs;
using HOSPEDAJE.Areas.ReporteProblema.DTOs;
using HOSPEDAJE.Areas.ResenaArea.DTOs;
using HOSPEDAJE.Areas.ReservaArea.DTOs;
using HOSPEDAJE.Areas.UsuarioArea.DTOs;
using HOSPEDAJE.Models;

namespace HOSPEDAJE.Services.AutoMapper
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {
            CreateMap<TblCategorium, CategoriumDTO>().ReverseMap();
            CreateMap<TblCliente, ClienteDTO>().ReverseMap();
            CreateMap<TblDetalleCliente, DetalleClienteDTO>().ReverseMap();
            CreateMap<TblDetalleHabitacion, DetalleHabitacionDTO>().ReverseMap();
            CreateMap<TblDetalleReserva, DetalleReservaDTO>().ReverseMap();
            CreateMap<TblDetalleUsuario, DetalleUsuarioDTO>().ReverseMap();
            CreateMap<TblEstado, EstadoDTO>().ReverseMap();
            CreateMap<TblHabitacion, HabitacionDTO>().ReverseMap();
            CreateMap<TblImagenHabitacion, ImagenHabitacionDTO>().ReverseMap();
            CreateMap<TblListaEspera, ListaEsperaDTO>().ReverseMap();
            CreateMap<TblMantenimientoLimpieza, MantenimientoLimpiezaDTO>().ReverseMap();
            CreateMap<TblReporteProblema, ReporteProblemaDTO>().ReverseMap();
            CreateMap<TblResena, ResenaDTO>().ReverseMap();
            CreateMap<TblReserva, ReservaDTO>().ReverseMap();
            CreateMap<TblRol, RolDTO>().ReverseMap();
            CreateMap<TblUsuario, UsuarioDTO>().ReverseMap();
        }
    }
}
