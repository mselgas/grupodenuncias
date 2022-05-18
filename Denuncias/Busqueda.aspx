<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="Denuncias.Busqueda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- general form elements -->
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Busqueda</h3>
        </div>
    <!-- /.card-header -->



    <div class="card-body">
        <div class="form-group">
            <label>Caratula</label>
            <asp:TextBox ID="TB_caratula" class="form-control" runat="server"></asp:TextBox>
        </div>

    </div>
    <!-- /.card-body -->

    <div class="card-footer">
        <asp:Button ID="btn_buscar" OnClick="btn_buscar_Click" runat="server" Text="Buscar" class="btn btn-primary" />
        <asp:Button ID="btn_limpiar" OnClick="btn_limpiar_Click" runat="server" Text="Limpiar" class="btn btn-default" />

    </div>

    </div>
    <!-- /.card -->
    <!-- /.card-header -->
    <div class="card-body">
        <table id="example2" class="table table-bordered table-hover">
            <tr>
                <td>
                    <h3>Denuncias</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%" OnRowCommand="GridView1_RowCommand"
                        BorderColor="#660033" BorderStyle="Dotted" BorderWidth="1px">
                        <FooterStyle BackColor="Tan" Height="20px" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Nro Denuncia">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Caratula" HeaderText="Caratula">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Observacion" HeaderText="Observacion">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Extracto" HeaderText="Extracto">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                             <asp:TemplateField HeaderText="Eliminar" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="BTN_eliminar" runat="server" CommandName="Eliminar" CommandArgument='<%# Eval("Id") %>  '><img src="dist/img/delete.png" alt="Eliminar"/></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>


                </td>
            </tr>

        </table>
    </div>
    <!-- /.card-body -->
    </div>
           
    <!-- /.card -->
</asp:Content>
