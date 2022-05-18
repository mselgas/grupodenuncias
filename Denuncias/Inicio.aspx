<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Denuncias.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Prólogo</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body">
         <p> Este sistema servirá para registrar las denuncias o procedimientos. Cargando no solo los
datos propios de la denuncia, sino también una serie de datos que nos servirán después
para poder realizar estadísticas más precisas.</p>
            <p>
Estará destinado a todas las dependencias policiales que carguen denuncias y/o
procedimientos, y a las áreas encargadas de procesar la información, realizar estadísticas y
tomar las medidas necesarias para combatir la delincuencia.</p>
            <p>
La carga de los datos se podrá realizar en dos etapas, para agilizar la labor del efectivo. Se
podrá cargar en una primer etapa los datos principales de la denuncia, y luego en una
segunda etapa, que podrá realizarla cualquier otro efectivo, se cargará una clasificación
extra que nos permitirá poder procesar la información de manera más eficiente.</p>
        </div>
        <!-- /.card-body -->
        
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->

</asp:Content>
