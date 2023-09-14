<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewSuggestEvent.aspx.cs" Inherits="UNotify.viewSuggestEvent" %>

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
        .titleCenter{
            display: block;
            margin: 0 auto;
            text-align: center;
            font-size: 1.7em;
            color: #fff;
        }

        input[type="text"] {
            background-color: #1E2126; /* Tonalidad gris */
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            width: 30vw;
            height: 8vh;
        }

        #textBoxActivities {
            resize: none;
            background-color: #1E2126; /* Tonalidad gris */
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            width: 30vw;
            height: 15vh;
        }

        .labelEventForm{
            display: inline-block;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 1.3em;
            margin: 5px 5px;
            color: #fff;
        }

        .buttonEvent{
            display: block;
            margin: 4vh auto;
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

        .buttonEvent:hover{
            /* Cambia el color de fondo al pasar el cursor sobre los botones si es necesario */
            background-image: none;
            background-color: #B82CBB; /* Cambia el color de fondo en el hover */
        }

        .container {
            display: flex;
            height: auto;
            margin-left: 0px;
            padding-left: 15px;
        }

        .left {
            flex: 1;
        }

        .right {
            flex: 2;
            background-color: #16191C;
            color: white;
            padding: 20px;
            text-align: center;
        }
        #PanelSuperior {
            display: flex;
            align-items: center; /* Centra verticalmente el contenido */
            background-color: #1E2126;
            height: 50px;
            justify-content: space-between; /* Alinea los elementos a la izquierda */
            padding: 0 10px; 
        }
    </style>
</head>
<body id="PageBody" runat="server">
    <form id="form1" runat="server">
        <div style="height: 385px">

            <asp:Panel ID="PanelSuperior" runat="server">
                <div style="display: flex; align-items: center; justify-content: flex-start; flex-grow: 1;">
                    <asp:ImageButton ID="btn_logout" runat="server" Height="40px" Width="40px" ImageUrl="img\logout.png" />
                </div>
                <div style="display: flex; align-items: center; justify-content: center; margin-right: 20px;">
                    <asp:ImageButton ID="btn_home" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" style="margin-right: 20px;" />
                    <asp:ImageButton ID="btn_colabs" runat="server" Height="40px" ImageUrl="img\people.png" Width="40px" style="margin-right: 20px;"/>
                    <asp:Label ID="lbl_colabs" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Añadir Colaborador" style="margin-right: 20px;" />
                    <asp:ImageButton ID="btn_Explorar" runat="server" Height="40px" ImageUrl="img\explorar.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_explorar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Explorar" style="margin-right: 20px;" />
                    <asp:ImageButton ID="btn_Sugerir" runat="server" Height="40px" ImageUrl="img\new-document.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Sugerir Evento" style="margin-right: 20px;" />
                    <asp:ImageButton ID="btn_calendar" runat="server" Height="40px" ImageUrl="img\calendar.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_calendar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Calendario" style="margin-right: 20px;" />
                </div>
                <div style="display: flex; align-items: center; justify-content: flex-end; flex-grow: 1;">
                    <asp:Label ID="lbl_user" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" style="margin-right: 20px;" />
                    <asp:ImageButton ID="btn_user" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px" />
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel1" runat="server" BackColor="#16191C" CssClass="firstContainer">
                <div class="container">
                    <div class="left">
                        <asp:Label ID="suggetsEventTitle" runat="server" Text="Sugerir nuevo evento" Font-Bold="True" CssClass="titleCenter" Font-Names="Segoe UI" Font-Size="XX-Large"></asp:Label><br />

                        <asp:Label ID="labelNameEvent" CssClass="labelEventForm" runat="server" Text="Ingresa el nombre del evento" Font-Names="Segoe ui" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxNameEvent" CssClass="textBoxEvent" runat="server" Placeholder="Puede contener hasta 90 caracteres" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br />

                        <asp:Label ID="labelDateTimeEvent" CssClass="labelEventForm" runat="server" Text="Ingresa el dia y la hora (inicio-fin) del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxDateTimeEvent" CssClass="textBoxEvent" runat="server" Placeholder="Debe ser en el formato DD/MM/AAAA XX-XX:XX" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br />

                        <asp:Label ID="labelCapacityMax" CssClass="labelEventForm" runat="server" Text="Ingresa la capacidad máxima de personas del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxCapacityMax" CssClass="textBoxEvent" runat="server" Placeholder="Debe ser número entero" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br />

                        <asp:Label ID="labelActivities" CssClass="labelEventForm" runat="server" Text="Agrega las actividades que se harán en el evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxActivities" CssClass="textBoxEvent" runat="server" Placeholder="Utiliza preferiblemente viñetas" TextMode="MultiLine" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br /><br />

                        <asp:Button ID="buttonCreateEvent" runat="server" Text="Crear Evento" CssClass="buttonEvent"/>
                    </div>
                    <div class="right">
                       <asp:Label ID="titleAsocia" runat="server" Text="Agregar asociaciones" Font-Bold="True" CssClass="titleCenter" Font-Names="Segoe UI" Font-Size="XX-Large"></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text="* Username asociación" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>