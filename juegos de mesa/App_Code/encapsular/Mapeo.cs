using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }

    private readonly string schema = "juegos_de_mesa";

    public Mapeo() : base("name=Conexion")
    {

    }

    public DbSet<Juegos> juegos { get; set; }

    public DbSet<Categoria> cat { get; set; }

    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema(this.schema);
        base.OnModelCreating(builder);
    }

}