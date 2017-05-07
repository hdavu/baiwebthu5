using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using otomoi.Models;


namespace otomoi.Controllers
{
    public class HomeController : Controller
    {

        Model1 db = new Model1();

        public ActionResult Index()
        {
            var listBaiViet = db.baiviets.ToList();
            return View(listBaiViet);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}