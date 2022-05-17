<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="NuevaDenuncia.aspx.cs" Inherits="Denuncias.NuevaDenuncia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- general form elements -->
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Nueva Denuncia</h3>
        </div>
        <!-- /.card-header -->


        <div class="card-body">
            <div class="form-group">
                <label for="exampleInputEmail1">Fecha</label>
                <asp:TextBox ID="TB_fecha" class="form-control" runat="server" placeholder="dd/mm/aaaa"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Caratula</label>
                     <asp:TextBox ID="TB_caratula" TextMode="MultiLine" class="form-control" runat="server" Rows="5"></asp:TextBox>
           
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Observacion</label>
                     <asp:TextBox ID="TB_observacion" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
           
            </div>
            <div class="form-group">
                <label >Extracto</label>
                     <asp:TextBox ID="TB_extracto" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
           
            </div>
            <div class="form-group">
                <asp:Label ID="lbl_error" runat="server" Text="" Style="color:red"></asp:Label>
                     
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <asp:Button ID="btn_guardar" OnClick="btn_guardar_Click" runat="server" Text="Continuar" class="btn btn-primary"/>
            
        </div>

    </div>
    <!-- /.card -->

</asp:Content>
