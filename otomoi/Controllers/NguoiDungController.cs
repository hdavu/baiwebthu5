using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using otomoi.Models;
using otomoi.Securiry;

namespace otomoi.Controllers
{

    [CustomAuthorize(Roles ="1")]
    public class NguoiDungController : Controller
    {
        private Model1 db = new Model1();

        // GET: NguoiDung
        public ActionResult Index()
        {
            var nguoidungs = db.nguoidungs.Include(n => n.quyen);
            return View(nguoidungs.ToList());
        }

        // GET: NguoiDung/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            nguoidung nguoidung = db.nguoidungs.Find(id);
            if (nguoidung == null)
            {
                return HttpNotFound();
            }
            return View(nguoidung);
        }

        // GET: NguoiDung/Create
        public ActionResult Create()
        {
            ViewBag.quyenma = new SelectList(db.quyens, "ma", "ten");
            return View();
        }

        // POST: NguoiDung/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ma,ten,matkhau,quyenma")] nguoidung nguoidung)
        {
            if (ModelState.IsValid)
            {
                db.nguoidungs.Add(nguoidung);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.quyenma = new SelectList(db.quyens, "ma", "ten", nguoidung.quyenma);
            return View(nguoidung);
        }

        // GET: NguoiDung/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            nguoidung nguoidung = db.nguoidungs.Find(id);
            if (nguoidung == null)
            {
                return HttpNotFound();
            }
            ViewBag.quyenma = new SelectList(db.quyens, "ma", "ten", nguoidung.quyenma);
            return View(nguoidung);
        }

        // POST: NguoiDung/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ma,ten,matkhau,quyenma")] nguoidung nguoidung)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nguoidung).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.quyenma = new SelectList(db.quyens, "ma", "ten", nguoidung.quyenma);
            return View(nguoidung);
        }

        // GET: NguoiDung/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            nguoidung nguoidung = db.nguoidungs.Find(id);
            if (nguoidung == null)
            {
                return HttpNotFound();
            }
            return View(nguoidung);
        }

        // POST: NguoiDung/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            nguoidung nguoidung = db.nguoidungs.Find(id);
            db.nguoidungs.Remove(nguoidung);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
