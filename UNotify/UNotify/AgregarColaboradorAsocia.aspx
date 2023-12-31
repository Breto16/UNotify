﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarColaboradorAsocia.aspx.cs" Inherits="UNotify.AgregarColaboradorAsocia" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        html, body {
        margin: 0;
        padding: 0;
        border: 0;
        }
        .container {
            display: flex;
            height: 624px;
            margin-left: 0px;
        }

        .left {
            flex: 2;
            background: url('img/crearuser.jpg') no-repeat center center;
            background-size: cover;
        }

        .right {
            flex: 1;
            background-color: #16191C;
            color: white;
            padding: 20px;
            text-align: center;
        }
        input[type="text"] {
            background-color: #1E2126; /* Tonalidad gris */
            height: 48px;
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
        }
        input[type="password"] {
            background-color: #1E2126; /* Tonalidad gris */
            height: 48px;
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
        }
        .form-control {
            margin-bottom: 20px;
        }
        .gradient-button {
            background-image: linear-gradient(to right, #4E2386, #B82CBB);
            color: white; /* Cambia el color del texto si es necesario */
            text-align: center;
            border: none;
            padding: 10px 20px; /* Ajusta el espaciado según tus necesidades */
            cursor: pointer;
            transition: background-color 0.3s ease; /* Efecto de transición suave */
            height: 50px;
            width: 48%;
            border-radius: 3px;
        }

        .gradient-button:hover {
            /* Cambia el color de fondo al pasar el cursor sobre los botones si es necesario */
            background-image: none;
            background-color: #B82CBB; /* Cambia el color de fondo en el hover */
        }
        .button-container {
            display: flex; /* Utiliza flexbox */
            justify-content: space-between; /* Coloca espacio entre los botones */
            align-items: center;
        }
        #PanelSuperior {
            display: flex;
            align-items: center; /* Centra verticalmente el contenido */
            background-color: #1E2126;
            height: 50px;
            justify-content: flex-start; /* Alinea los elementos a la izquierda */
        }
    </style>
</head>
<body id="PageBody" runat="server">
    <form id="form2" runat="server">
          <asp:Panel ID="PanelSuperior" runat="server" HorizontalAlign="Left">
               
              &nbsp;&nbsp;&nbsp;&nbsp;
                
          <asp:Label ID="Label3" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="UNotify" Font-Size="XX-Large"></asp:Label>
          </asp:Panel>
        <div class="container">
            <div class="right">
            <div style="float: left;">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" OnClick="ImageButton1_Click"/>
            </div>
            <br />
            <br />
            <br />
  
            <asp:Label ID="Label5" runat="server" Font-Names="Segoe UI" Font-Size="XX-Large" ForeColor="White" Text="Colaboradores | Asociaciones"></asp:Label>
            <br />
            <br />    
            <asp:TextBox ID="txt_Nombre" runat="server" CssClass="form-control" BorderColor="#9332C0" BorderStyle="None" Placeholder="Nombre Completo" Height="50px" Width="100%" Type="text" Font-Names="Segoe UI Light" Font-Size="X-Large" />
            <br />
            <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" BorderColor="#9332C0" BorderStyle="None" Placeholder="Email" Height="50px" Width="100%" Type="text" Font-Names="Segoe UI Light" Font-Size="X-Large" />
            <br />
            <asp:TextBox ID="txt_password1" runat="server" CssClass="form-control" BorderColor="#9332C0" BorderStyle="None" Placeholder="Contraseña" Height="50px" Width="100%" Type="password" Font-Names="Segoe UI Light" Font-Size="X-Large" />
            <br />
            <asp:TextBox ID="txt_password2" runat="server" CssClass="form-control" BorderColor="#9332C0" BorderStyle="None" Placeholder="Verificar Contraseña" Height="50px" Width="100%" Type="password" Font-Names="Segoe UI Light" Font-Size="X-Large" />
            <br />
            <asp:Label ID="lbl_error" runat="server" Font-Names="Segoe UI Light" Font-Size="Large" ForeColor="#FF6666"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_Registrar" runat="server" CssClass="gradient-button" BackColor="#9332C0" BorderStyle="None" Font-Names="Segoe UI Light" ForeColor="White" Text="Invitar al Equipo" Font-Size="Large" OnClick="btn_Registrar_Click" />
            
        </div>
            <div class="left">
                <!-- Aquí puedes agregar cualquier contenido adicional si es necesario -->
            </div>
            
        </div>
    </form>
</body>
</html>