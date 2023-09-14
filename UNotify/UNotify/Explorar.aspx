<%@ Page Language="C#" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="Explorar.aspx.cs" Inherits="UNotify.Explorar" %>

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
            background: url('img/loginimg.jpg') no-repeat center center;
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
            padding: 0 10px; 
        }

        .event{
            margin-left: 10px;
            font-family: 'Segoe UI Light';
            width: 25%;
            color: #ffffff;
        }
    </style>
</head>
<body id="PageBody" runat="server">
    <form id="form2" runat="server">
          <asp:Panel ID="PanelSuperior" runat="server">
    <div style="display: flex; align-items: center; justify-content: flex-start; flex-grow: 1;">
        <asp:ImageButton ID="ImageButton8" runat="server" Height="40px" Width="40px" ImageUrl="img\logout.png" />
    </div>
    <div style="display: flex; align-items: center; justify-content: center; margin-right: 20px;">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" style="margin-right: 20px;" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="img\explorar.png" Width="40px" style="margin-right: 2px;" />
        <asp:Label ID="lbl_explorar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Explorar" style="margin-right: 20px;" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="img\new-document.png" Width="40px" style="margin-right: 20px;" OnClick="ImageButton2_Click" />
        <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Sugerir Evento" style="margin-right: 20px;" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="40px" ImageUrl="img\calendar.png" Width="40px" style="margin-right: 20px;" />
        <asp:Label ID="lbl_calendar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Calendario" style="margin-right: 20px;" />
    </div>
    <div style="display: flex; align-items: center; justify-content: flex-end; flex-grow: 1;">
        <asp:Label ID="Label1" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" style="margin-right: 20px;" />
        <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px" />
    </div>
</asp:Panel>

        <div class="container">
            <asp:Label ID="pruebaCommand" runat="server" Text="Label"></asp:Label>
            <asp:Repeater ID="eventRepeater" runat="server">
                <ItemTemplate>
                    <div class="event">
                        <asp:Image ID="eventImage" runat="server" ImageUrl='<%# "img/" + Eval("NombreImagen") %>' AlternateText="Imagen del Evento" Style="width: 250px; height: 250px;"/>
                        <h2><%# Eval("Nombre") %></h2>
                        <p>Descripción: <%# Eval("Descripcion") %></p>
                        <p>Fecha: <%# Eval("Fecha", "{0:MM/dd/yyyy}") %></p>
                        <p>Hora: <%# Eval("Hora") %></p>
                        <p>Lugar: <%# Eval("Lugar") %></p>
                        <p>Capacidad máxima: <%# Eval("Capacidad") %></p>  
                        <asp:Button ID="btnEjemplo" CssClass="gradient-button" runat="server" Text="Botón de Ejemplo" CommandArgument='<%# Eval("EventoID") %>' OnClick="btnEjemplo_Click" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </form>
</body>
</html>