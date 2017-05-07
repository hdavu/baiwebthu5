using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using otomoi.Models;
//using PagedList;
using otomoi.Securiry;
using System.IO;
using System.Net;
using System.Data.Entity;

namespace otomoi.Controllers
{
    public class BaiVietController : Controller
    {
        private Model1 db = new Model1();

        // GET: BaiViet
        public ActionResult Index()
        {
            var baiviets = db.baiviets.Include(bv => bv.loaibaiviet);
            return View(baiviets.ToList());
        }

        // GET: BaiViet/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            baiviet baiviet = db.baiviets.Find(id);
            if (baiviet == null)
            {
                return HttpNotFound();
            }
            return View(baiviet);
        }

        // GET: BaiViet/Create
        [CustomAuthorize(Roles = "1,2")]
        public ActionResult Create()
        {
            ViewBag.loaibaivietma = new SelectList(db.loaibaiviets, "ma", "ten");
            ViewBag.Ngay = DateTime.Now;
            return View();
        }

        // POST: BaiViet/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [CustomAuthorize(Roles = "1,2")]

        public ActionResult Create(baiviet baiviet,HttpPostedFileBase anh)
        {
            if (anh == null)
            {
                ModelState.AddModelError("File", "Chưa upload file ảnh");
            }
            else if (anh.ContentLength > 0)
            {                 //TO:DO
                var fileName = Path.GetFileName(anh.FileName);
                var path = Path.Combine(Server.MapPath("~/Content/img"), fileName);
                anh.SaveAs(path);

                baiviet.anh = fileName;
            }


            if (ModelState.IsValid)
            {
                baiviet.thoigian = DateTime.Now;
                db.baiviets.Add(baiviet);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.loaibaivietma = new SelectList(db.loaibaiviets, "ma", "ten", baiviet.loaibaivietma);
            return View(baiviet);
        }

        // GET: BaiViet/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            baiviet baiviet = db.baiviets.Find(id);
            if (baiviet == null)
            {
                return HttpNotFound();
            }
            ViewBag.loaibaivietma = new SelectList(db.loaibaiviets, "ma", "ten", baiviet.loaibaivietma);
            return View(baiviet);
        }

        // POST: BaiViet/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ma,loaibaivietma,tieude,noidung,anh,thoigian,tomtat")] baiviet baiviet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(baiviet).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.loaibaivietma = new SelectList(db.loaibaiviets, "ma", "ten", baiviet.loaibaivietma);
            return View(baiviet);
        }

        // GET: BaiViet/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            baiviet baiviet = db.baiviets.Find(id);
            if (baiviet == null)
            {
                return HttpNotFound();
            }
            return View(baiviet);
        }

        // POST: BaiViet/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            baiviet baiviet = db.baiviets.Find(id);
            db.baiviets.Remove(baiviet);
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
