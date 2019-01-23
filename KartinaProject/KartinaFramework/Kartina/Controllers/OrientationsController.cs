using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Kartina;

namespace Kartina.Controllers
{
    public class OrientationsController : Controller
    {
        private KartinaTPEntities db = new KartinaTPEntities();

        // GET: Orientations
        public ActionResult Index()
        {
            var orientation = db.Orientation.Include(o => o.Photo);
            return View(orientation.ToList());
        }

        // GET: Orientations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Orientation orientation = db.Orientation.Find(id);
            if (orientation == null)
            {
                return HttpNotFound();
            }
            return View(orientation);
        }

        // GET: Orientations/Create
        public ActionResult Create()
        {
            ViewBag.IDPhoto = new SelectList(db.Photo, "id", "Titre");
            return View();
        }

        // POST: Orientations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Label,IDPhoto")] Orientation orientation)
        {
            if (ModelState.IsValid)
            {
                db.Orientation.Add(orientation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IDPhoto = new SelectList(db.Photo, "id", "Titre", orientation.IDPhoto);
            return View(orientation);
        }

        // GET: Orientations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Orientation orientation = db.Orientation.Find(id);
            if (orientation == null)
            {
                return HttpNotFound();
            }
            ViewBag.IDPhoto = new SelectList(db.Photo, "id", "Titre", orientation.IDPhoto);
            return View(orientation);
        }

        // POST: Orientations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Label,IDPhoto")] Orientation orientation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(orientation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IDPhoto = new SelectList(db.Photo, "id", "Titre", orientation.IDPhoto);
            return View(orientation);
        }

        // GET: Orientations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Orientation orientation = db.Orientation.Find(id);
            if (orientation == null)
            {
                return HttpNotFound();
            }
            return View(orientation);
        }

        // POST: Orientations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Orientation orientation = db.Orientation.Find(id);
            db.Orientation.Remove(orientation);
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
