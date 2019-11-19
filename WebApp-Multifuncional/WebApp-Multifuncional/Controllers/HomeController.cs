using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApp_Multifuncional.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult Consulta()
		{	
			return View();
		}

		public ActionResult Acercade()
		{
			return View();
		}
	}
}