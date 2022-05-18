<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="DenunciaPaso2.aspx.cs" Inherits="Denuncias.DenunciaPaso2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- general form elements -->
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Nueva Denuncia - Lugar del Hecho</h3>
        </div>
        <!-- /.card-header -->


        <div class="card-body">

            <div class="form-group">
                <label>Calle</label>
                <asp:TextBox ID="TB_calle" class="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group">
                <label>Altura</label>
                <asp:TextBox ID="TB_altura" class="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group">
                <label>Depto</label>
                <asp:TextBox ID="TB_depto" class="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group">
                <label>Entre Calles</label>
                <asp:TextBox ID="TB_entreCalles" class="form-control" runat="server"></asp:TextBox>

            </div>

            <div class="form-group">
                <label>Partido</label>
                <asp:DropDownList ID="ddl_partido" AutoPostBack="true" OnSelectedIndexChanged="ddl_partido_SelectedIndexChanged" runat="server" class="form-control"></asp:DropDownList>

            </div>
            <asp:UpdatePanel ID="up" runat="server">
                <ContentTemplate>
                    <div class="form-group">
                        <label>Localidad</label>
                        <asp:DropDownList ID="ddl_localidad" runat="server" class="form-control"></asp:DropDownList>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddl_partido" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
            <div class="form-group">
                <asp:Label ID="lbl_error" runat="server" Text="" Style="color: red"></asp:Label>

            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <asp:Button ID="btn_guardar" runat="server" Text="Continuar" class="btn btn-primary" />

        </div>

    </div>
    <!-- /.card -->


</asp:Content>
