//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kartina
{
    using System;
    using System.Collections.Generic;
    
    public partial class Orientation
    {
        public int Id { get; set; }
        public string Label { get; set; }
        public int IDPhoto { get; set; }
    
        public virtual Photo Photo { get; set; }
    }
}
