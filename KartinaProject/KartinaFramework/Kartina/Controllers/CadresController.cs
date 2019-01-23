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
    public class CadresController : Controller
    {
        private KartinaTPEntities db = new KartinaTPEntities();

        // GET: Cadres
        public ActionResult Index()
        {
            return View(db.Cadre.ToList());
        }

        // GET: Cadres/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cadre cadre = db.Cadre.Find(id);
            if (cadre == null)
            {
                return HttpNotFound();
            }
            return View(cadre);
        }

        // GET: Cadres/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Cadres/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Label,Prix")] Cadre cadre)
        {
            if (ModelState.IsValid)
            {
                db.Cadre.Add(cadre);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cadre);
        }

        // GET: Cadres/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cadre cadre = db.Cadre.Find(id);
            if (cadre == null)
            {
                return HttpNotFound();
            }
            return View(cadre);
        }

        // POST: Cadres/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Label,Prix")] Cadre cadre)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cadre).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cadre);
        }

        // GET: Cadres/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cadre cadre = db.Cadre.Find(id);
            if (cadre == null)
            {
                return HttpNotFound();
            }
            return View(cadre);
        }

        // POST: Cadres/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Cadre cadre = db.Cadre.Find(id);
            db.Cadre.Remove(cadre);
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
