<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/controller/Crud_juegos_de_mesa.aspx.cs" Inherits="view_Crud_juegos_de_mesa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style6 {
            height: 23px;
            width: 19%;
            text-align: center;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style17 {
            height: 23px;
            background-color: #999999;
        }
        .auto-style21 {
            height: 24px;
            background-color: #999999;
        }
        .auto-style22 {
            height: 23px;
            text-align: center;
        }
        .auto-style23 {
            height: 23px;
            width: 19%;
        }
        .auto-style27 {
            width: 19%;
        }
        .auto-style31 {
            height: 23px;
            width: 243px;
        }
        .auto-style33 {
            width: 243px;
        }
        .auto-style37 {
            height: 23px;
            text-align: center;
            width: 268px;
        }
        .auto-style39 {
            height: 23px;
            width: 268px;
        }
        .auto-style40 {
            height: 23px;
            width: 49%;
        }
        .auto-style41 {
            width: 268px;
        }
        .auto-style42 {
            width: 49%;
        }
        .auto-style43 {
            height: 23px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style44 {
            text-align: center;
        }
        .auto-style45 {
            background-color: #999999;
        }
        .auto-style46 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4"><strong>AGREGAR JUEGOS</strong></td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style6">NOMBRE:</td>
                    <td class="auto-style31">&nbsp; &nbsp;<asp:TextBox ID="txt_nomJuego" runat="server" Width="281px"></asp:TextBox>
                    </td>
                    <td class="auto-style37">CATEGORIA:</td>
                    <td class="auto-style40">
                        <asp:DropDownList ID="ddl_catJuego" runat="server" DataSourceID="DDL_Categoria" DataTextField="Nombre" DataValueField="Id" Height="22px" Width="199px">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DDL_Categoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAOjuego"></asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40">
                        <asp:Button ID="btn_addJuego" runat="server" CssClass="auto-style12" Text="Agregar" Width="150px" OnClick="btn_addJuego_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="4">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style46" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ODSJuego" ForeColor="#333333" GridLines="None" Width="621px" DataKeyNames="Id_juego">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id_juego" HeaderText="Id_juego" SortExpression="Id_juego" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Id_categoria" HeaderText="Id_categoria" SortExpression="Id_categoria" />
                                <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                                <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ODSJuego" runat="server" DataObjectTypeName="Juegos" DeleteMethod="eliminarJuego" SelectMethod="obtenerJuegos" TypeName="DAOjuego" UpdateMethod="updateJuego">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                        </asp:ObjectDataSource>
                        </td>
                    <td class="auto-style40">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style43" colspan="4"><strong>AGREGAR CATEGORIA</strong></td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style44" colspan="2">NOMBRE:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txt_nombreCat" runat="server" Width="372px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"><strong>
                        <asp:Button ID="btn_addCategoria" runat="server" CssClass="auto-style12" Text="Agregar" Width="160px" OnClick="btn_addCategoria_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style45" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ODSCategoria" ForeColor="#333333" GridLines="None" Width="616px" DataKeyNames="Id">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                                <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ODSCategoria" runat="server" DataObjectTypeName="Categoria" DeleteMethod="eliminarCategoria" SelectMethod="obtenerCategoria" TypeName="DAOjuego" UpdateMethod="updateCategoria"></asp:ObjectDataSource>
                    </td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style45" colspan="4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
