<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewCreateEvent.aspx.cs" Inherits="UNotify.viewCreateEvent" %>

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
            width: 40vw;
            height: 8vh;
        }

        input[type="number"] {
            background-color: #1E2126; /* Tonalidad gris */
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            width: 40vw;
            height: 8vh;
        }

        input[type="date"] {
            background-color: #1E2126; /* Tonalidad gris */
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            width: 40vw;
            height: 8vh;
        }

        #uploadImage{
            background-color: #16191C; /* Tonalidad gris */
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            width: 40vw;
            height: 8vh;
        }

        .textBoxEventMulti{
            resize: none;
            background-color: #1E2126; /* Tonalidad gris */
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            width: 40vw;
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
            width: 20%;
            border-radius: 3px;
        }

        buttonEvent:hover {
            /* Cambia el color de fondo al pasar el cursor sobre los botones si es necesario */
            background-image: none;
            background-color: #B82CBB; /* Cambia el color de fondo en el hover */
        }

        .container{
            display: flex;
            height: auto;
            margin-left: 0px;
            padding-left: 15px;
        }

        #containerDataEvent{
            flex: 1;
            padding: 20px;
            text-align: center;
            color: white;
            background-color: #16191C;
        }

        #containerColabs{
            flex: 1;
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
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="40px" Width="40px" ImageUrl="img\logout.png" />
                </div>
                <div style="display: flex; align-items: center; justify-content: center; margin-right: 20px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="img\people.png" Width="40px" style="margin-right: 20px;"/>
                    <asp:Label ID="lbl_colabs" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Añadir Colaborador" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="img\explorar.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_explorar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Explorar" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="img\new-document.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Sugerir Evento" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="40px" ImageUrl="img\calendar.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="Label2" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Calendario" style="margin-right: 20px;" />
                </div>
                <div style="display: flex; align-items: center; justify-content: flex-end; flex-grow: 1;">
                    <asp:Label ID="Label1" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px" />
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server" BackColor="#16191C" CssClass="firstContainer" Style="padding-left: 15px; height: auto;">
                <br />
                <asp:Label ID="createEventTitle" runat="server" Text="Crear nuevo evento" Font-Bold="False" CssClass="titleCenter" Font-Names="Segoe UI" Font-Size="XX-Large"></asp:Label><br />                
                <div class="container">
                    <div id="containerDataEvent">

                        <asp:Label ID="labelNameEvent" CssClass="labelEventForm" runat="server" Text="Ingresa el nombre del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxNameEvent" CssClass="textBoxEvent" runat="server" Placeholder="Puede contener hasta 90 carácteres" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br />

                        <asp:Label ID="labelDescription" CssClass="labelEventForm" runat="server" Text="Agrega la descripción del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxDescription" CssClass="textBoxEventMulti" runat="server" Placeholder="Sea descriptivo (No superé los 100 carácteres)" TextMode="MultiLine" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox>

                        <asp:Label ID="labelDateEvent" CssClass="labelEventForm" runat="server" Text="Ingresa el dia de inicio del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxDateEvent" type="date" CssClass="textBoxEvent" runat="server" Placeholder="Debe ser en el formato DD/MM/AAAA" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br />
                        
                        <asp:Label ID="labelTimeEvent" CssClass="labelEventForm" runat="server" Text="Ingresa la hora de inicio del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label>
                        <asp:TextBox ID="textBoxTimeEvent" CssClass="textBoxEvent" runat="server" Placeholder="Debe ser en el formato HH-MM-SS" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox>

                    </div>
                    <div id="containerColabs">
                        <asp:Label ID="labelCapacityMax" CssClass="labelEventForm" runat="server" Text="Ingresa la capacidad máxima de personas del evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxCapacityMax" CssClass="textBoxEvent" runat="server" Type="number" Placeholder="Debe ser número entero" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br />

                        <asp:Label ID="labelActivities" CssClass="labelEventForm" runat="server" Text="Agrega las actividades que se harán en el evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxActivities" CssClass="textBoxEventMulti" runat="server" Placeholder="Utiliza preferiblemente viñetas" TextMode="MultiLine" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox>

                        <asp:Label ID="labelPlace" CssClass="labelEventForm" runat="server" Text="Ingresa el lugar donde se va a realizar el evento" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                        <asp:TextBox ID="textBoxPlace" CssClass="textBoxEventMulti" runat="server" Placeholder="Sea muy descriptivo del lugar (No superé los 100 carácteres)" TextMode="MultiLine" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox>

                        <asp:FileUpload ID="uploadImage" runat="server" Font-Names="Segoe UI" Font-Size="X-Large" />
                    
                    </div>
                </div>
                <asp:Button ID="buttonCreateEvent" runat="server" Text="Crear Evento" CssClass="buttonEvent" OnClick="buttonCreateEvent_Click" Font-Names="Segoe UI Light" Font-Size="Large"/>   
                <br >
                <br >
            </asp:Panel>
        </div>
    </form>
</body>
</html>
