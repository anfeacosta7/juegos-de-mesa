using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Crud_juegos_de_mesa :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_addJuego_Click(object sender, EventArgs e)
    {
        try
        {
            Juegos juego = new Juegos();
            juego.Nombre = txt_nomJuego.Text;
            juego.Id_categoria = ddl_catJuego.SelectedIndex+1;
            
            new DAOjuego().insertarJuego(juego);

            Response.Redirect("Crud_juegos_de_mesa.aspx");
        }
        catch (Exception ex)
        { return; }
    }

    protected void btn_addCategoria_Click(object sender, EventArgs e)
    {
        try
        {
            Categoria categ = new Categoria();
            categ.Nombre = txt_nombreCat.Text;
            
            new DAOjuego().insertarCategoria(categ);

            Response.Redirect("Crud_juegos_de_mesa.aspx");
        }
        catch (Exception ex)
        { return; }
    }
}