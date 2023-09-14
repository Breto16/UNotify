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

        .textBoxEvent{
            border: 2px solid #9332C0;
            border-radius: 10px;
            padding: 5px;
            width: 30vw;
            height: 5vh;
            background-color:#16191C;
            color: #ffffff;
            resize: none;
            overflow-block: auto;
        }

        .labelEventForm{
            display: inline-block;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 1.3em;
            margin: 5px 5px;
            color: #fff;
        }

        .buttonEvent{
            border: 1px solid #9332C0;
            border-radius: 10px;
            display: block; 
            margin: 4vh auto;
            margin-top: 15px;
            width: 12vw;
            height: 7vh;
            font-size: 90%;
            font-weight: 900;
            background-color: #16191C;
            color: #fff;
            cursor: pointer;
        }

        .firstContainer{
            display:flex;
            align-items: center;
        }

        #containerDataEvent{
            display: inline-block;
            width: 50%;
            height: 100%;
        }

        #containerColabs{
             display: inline-block;
             width: 50%;
             height: 70%;
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
                <div style="display: flex; justify-content: space-between;">
                    <div id="containerDataEvent">
                        <asp:Label ID="createEventTitle" runat="server" Text="Crear nuevo evento" Font-Bold="True" CssClass="titleCenter"></asp:Label><br />

                        <asp:Label ID="labelNameEvent" CssClass="labelEventForm" runat="server" Text="Ingresa el nombre del evento"></asp:Label><br />
                        <asp:TextBox ID="textBoxNameEvent" CssClass="textBoxEvent" runat="server" Placeholder="Puede contener hasta 90 carácteres"></asp:TextBox><br />

                        <asp:Label ID="labelDescription" CssClass="labelEventForm" runat="server" Text="Agrega la descripción del evento"></asp:Label><br />
                        <asp:TextBox ID="textBoxDescription" CssClass="textBoxEvent" runat="server" Placeholder="Sea descriptivo (No superé los 100 carácteres)" TextMode="MultiLine"></asp:TextBox>

                        <asp:Label ID="labelDateTimeEvent" CssClass="labelEventForm" runat="server" Text="I">Ingresa el dia y la hora (inicio-fin) del evento</asp:Label><br />
                        <asp:TextBox ID="textBoxDateTimeEvent" CssClass="textBoxEvent" runat="server" Placeholder="Debe ser en el formato DD/MM/AAAA XX-XX:XX"></asp:TextBox><br />

                        <asp:Label ID="labelCapacityMax" CssClass="labelEventForm" runat="server" Text="Ingresa la capacidad máxima de personas del evento"></asp:Label><br />
                        <asp:TextBox ID="textBoxCapacityMax" CssClass="textBoxEvent" runat="server" Placeholder="Debe ser número entero"></asp:TextBox><br />

                        <asp:Label ID="labelActivities" CssClass="labelEventForm" runat="server" Text="Agrega las actividades que se harán en el evento"></asp:Label><br />
                        <asp:TextBox ID="textBoxActivities" CssClass="textBoxEvent" runat="server" Placeholder="Utiliza preferiblemente viñetas" TextMode="MultiLine"></asp:TextBox>

                        <asp:Label ID="labelPlace" CssClass="labelEventForm" runat="server" Text="Ingresa el lugar donde se va a realizar el evento"></asp:Label><br />
                        <asp:TextBox ID="textBoxPlace" CssClass="textBoxEvent" runat="server" Placeholder="Sea muy descriptivo del lugar (No superé los 100 carácteres)" TextMode="MultiLine"></asp:TextBox>

                        <asp:Button ID="buttonCreateEvent" runat="server" Text="Crear Evento" CssClass="buttonEvent"/>
                    </div>
                    <div id="containerColabs">
                        <asp:Label ID="titleColabs" runat="server" Text="Agregar colaboradores" Font-Bold="True" CssClass="titleCenter"></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text="* Username colaborador"></asp:Label>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
