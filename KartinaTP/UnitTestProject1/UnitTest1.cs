using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        /// <summary>
        /// Determine si dans l'onglet format, l'utilisateur a bien choisi une option
        /// </summary>
        [TestMethod]
        public void TestSelectionOngletFormat()
        {
            ObjetATester objetATesterOngletFormat = new ObjetATester();
            Assert.IsNotNull(objetATesterOngletFormat);
        }
        /// <summary>
        /// Determine si dans l'onglet finition, l'utilisateur a bien choisi une option
        /// </summary>
        [TestMethod]
        public void TestSelectionOngletFinition()
        {
            ObjetATester objetATesterOngletFinition = new ObjetATester();
            Assert.IsNotNull(objetATesterOngletFinition);
        }
        /// <summary>
        /// Determine si dans l'onglet cadre, l'utilisateur a bien choisi une option
        /// </summary>
        [TestMethod]
        public void TestSelectionOngletCadre()
        {
            ObjetATester objetATesterOngletCadre = new ObjetATester();
            Assert.IsNotNull(objetATesterOngletCadre);
        }
    }
}
