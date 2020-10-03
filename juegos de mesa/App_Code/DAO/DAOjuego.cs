using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOjuego
/// </summary>
public class DAOjuego
{

    public List<Categoria> obtenerCategoria()
    {
        using (var db = new Mapeo())
        {
            return db.cat.ToList();
        }
    }

    public List<Juegos> obtenerJuegos()
    {
        using (var db = new Mapeo())
        {
            return db.juegos.ToList();
        }
    }

    public void insertarJuego(Juegos juegos)
    {
        using (var db = new Mapeo())
        {
            db.juegos.Add(juegos);
            db.SaveChanges();
        }
    }

    public void insertarCategoria(Categoria cat)
    {
        using (var db = new Mapeo())
        {
            db.cat.Add(cat);
            db.SaveChanges();
        }
    }

    public void eliminarJuego(Juegos juego)
    {
        using (var db = new Mapeo())
        {
            Juegos juegos = db.juegos.Where(x => x.Id_juego == juego.Id_juego).First();
            db.juegos.Remove(juegos);
            db.SaveChanges();
        }
    }

    public void eliminarCategoria(Categoria catego)
    {
        using (var db = new Mapeo())
        {
            Categoria categ = db.cat.Where(x => x.Id == catego.Id).First();
            db.cat.Remove(categ);
            db.SaveChanges();
        }
    }

    public void updateJuego(Juegos juego)
    {
        using (var db = new Mapeo())
        {
            Juegos juegoAnterior = db.juegos.Where(x => x.Id_juego == juego.Id_juego).First();
            juegoAnterior.Id_juego = juego.Id_juego;
            juegoAnterior.Nombre = juego.Nombre;
            juegoAnterior.Id_categoria = juego.Id_categoria;
            db.juegos.Attach(juegoAnterior);

            var entry = db.Entry(juegoAnterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void updateCategoria(Categoria categ)
    {
        using (var db = new Mapeo())
        {
            Categoria catAnterior = db.cat.Where(x => x.Id == categ.Id).First();
            catAnterior.Id = categ.Id;
            catAnterior.Nombre = categ.Nombre;
            db.cat.Attach(catAnterior);

            var entry = db.Entry(catAnterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }


}