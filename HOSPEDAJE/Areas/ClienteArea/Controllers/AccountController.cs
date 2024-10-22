using Microsoft.AspNetCore.Mvc;

namespace HOSPEDAJE.Areas.ClienteArea.Controllers
{
    [Area("ClienteArea")]
    public class AccountController : Controller
    {
        [HttpGet]
        public ActionResult Account()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Registrar()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpGet]
        public ActionResult LoginEmpresa()
        {
            return View();
        }
    }
}
