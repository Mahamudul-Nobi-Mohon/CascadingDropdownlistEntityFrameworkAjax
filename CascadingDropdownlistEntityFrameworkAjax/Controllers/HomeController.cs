using CascadingDropdownlistEntityFrameworkAjax.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CascadingDropdownlistEntityFrameworkAjax.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            MyModel db = new MyModel();
            ViewBag.CountryName = new SelectList(db.Countries, "CountryId", "CountryName");
            return View();
        }

        public JsonResult GetAllStatesByCountryId(int CountryID)
        {
            MyModel db = new MyModel();
            db.Configuration.ProxyCreationEnabled = false;
            return Json(db.States.Where(p => p.CountryId == CountryID),JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetAllCitiesByStateId(int StateID)
        {
            MyModel db = new MyModel();
            db.Configuration.ProxyCreationEnabled = false;
            var a = db.Cities.Where(p => p.StateId == StateID);
            return Json(db.Cities.Where(p => p.StateId == StateID), JsonRequestBehavior.AllowGet);
        }


    }
}