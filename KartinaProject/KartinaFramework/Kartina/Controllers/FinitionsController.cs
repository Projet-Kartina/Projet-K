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
    public class FinitionsController : Controller
    {
        private KartinaTPEntities db = new KartinaTPEntities();

        // GET: Finitions
        public ActionResult Index()
        {
            var finition = db.Finition.Include(f => f.Finition1).Include(f => f.Finition2).Include(f => f.Format);
            return View(finition.ToList());
        }

        // GET: Finitions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Finition finition = db.Finition.Find(id);
            if (finition == null)
            {
                return HttpNotFound();
            }
            return View(finition);
        }

        // GET: Finitions/Create
        public ActionResult Create()
        {
            ViewBag.id = new SelectList(db.Finition, "id", "Label");
            ViewBag.id = new SelectList(db.Finition, "id", "Label");
            ViewBag.id = new SelectList(db.Format, "id", "Label");
            return View();
        }

        // POST: Finitions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Label,Prix")] Finition finition)
        {
            if (ModelState.IsValid)
            {
                db.Finition.Add(finition);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id = new SelectList(db.Finition, "id", "Label", finition.id);
            ViewBag.id = new SelectList(db.Finition, "id", "Label", finition.id);
            ViewBag.id = new SelectList(db.Format, "id", "Label", finition.id);
            return View(finition);
        }

        // GET: Finitions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Finition finition = db.Finition.Find(id);
            if (finition == null)
            {
                return HttpNotFound();
            }
            ViewBag.id = new SelectList(db.Finition, "id", "Label", finition.id);
            ViewBag.id = new SelectList(db.Finition, "id", "Label", finition.id);
            ViewBag.id = new SelectList(db.Format, "id", "Label", finition.id);
            return View(finition);
        }

        // POST: Finitions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Label,Prix")] Finition finition)
        {
            if (ModelState.IsValid)
            {
                db.Entry(finition).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id = new SelectList(db.Finition, "id", "Label", finition.id);
            ViewBag.id = new SelectList(db.Finition, "id", "Label", finition.id);
            ViewBag.id = new SelectList(db.Format, "id", "Label", finition.id);
            return View(finition);
        }

        // GET: Finitions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Finition finition = db.Finition.Find(id);
            if (finition == null)
            {
                return HttpNotFound();
            }
            return View(finition);
        }

        // POST: Finitions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Finition finition = db.Finition.Find(id);
            db.Finition.Remove(finition);
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
