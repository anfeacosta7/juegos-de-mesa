using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Juegos
/// </summary>
/// 

[Serializable]
[Table("juegos_de_mesa", Schema = "juegos_de_mesa")]

public class Juegos
{

    private int id_juego;
    private String nombre;
    private int id_cat;

    [Key]
    [Column("id_juego")]
    public int Id_juego { get => id_juego; set => id_juego = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("id_categoria")]
    public int Id_categoria { get => id_cat; set => id_cat = value; }

}