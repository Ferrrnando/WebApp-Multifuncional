﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApp_Multifuncional.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class multifuncionalEntities2 : DbContext
    {
        public multifuncionalEntities2()
            : base("name=multifuncionalEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<materia> materia { get; set; }
        public virtual DbSet<materia_miembro> materia_miembro { get; set; }
        public virtual DbSet<miembro> miembro { get; set; }
    }
}
