using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Categoria
/// </summary>
/// 

[Serializable]
[Table("categoria", Schema = "juegos_de_mesa")]

public class Categoria
{

    private int id_juego;
    private String nombre;

    [Key]
    [Column("id")]
    public int Id { get => id_juego; set => id_juego = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }

}