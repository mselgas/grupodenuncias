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
                     <asp:TextBox ID="TB_calle"  class="form-control" runat="server"></asp:TextBox>
           
            </div>
            <div class="form-group">
                <label>Altura</label>
                     <asp:TextBox ID="TB_altura" class="form-control" runat="server" ></asp:TextBox>
           
            </div>
            <div class="form-group">
                <label >Depto</label>
                     <asp:TextBox ID="TB_extracto" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
           
            </div>
            <div class="form-group">
                <label >Entre Calles</label>
                     <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
           
            </div>
            <div class="form-group">
                <asp:Label ID="lbl_error" runat="server" Text="" Style="color:red"></asp:Label>
                     
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <asp:Button ID="btn_guardar"  runat="server" Text="Continuar" class="btn btn-primary"/>
            
        </div>

    </div>
    <!-- /.card -->

</asp:Content>
