using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApp_Multifuncional.Models.ModelConsulta;

namespace WebApp_Multifuncional.Controllers
{
    public class ConsultaController : Controller
    {
        // GET: Consulta
        public ActionResult Consulta()
        {
			/*Miembro Dropdownlist*/
			List<ConsultaTabla> lst = null;
			using (Models.multifuncionalEntities2 db = new Models.multifuncionalEntities2())
			{
				 lst =
					(from d in db.miembro
					 select new ConsultaTabla
					 {
						 Id = d.id,
						 Matricula = d.matricula

					 }).ToList();
			}

			List<SelectListItem> items = lst.ConvertAll(a =>
			{
				return new SelectListItem()
				{
					Text = a.Matricula.ToString(),
					Value = a.Id.ToString(),
					Selected = false
				};
			});

			ViewBag.items = items;
			/*End Miembro Dropdownlist*/

			return View(items);
		}
    }
}