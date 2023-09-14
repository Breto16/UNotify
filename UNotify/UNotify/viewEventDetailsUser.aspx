<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewEventDetailsUser.aspx.cs" Inherits="UNotify.viewEventDetailsUser" %>

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
        .textBoxForumComment{
            color: #ffffff;
            resize: none;
            overflow-block: auto;
            margin-left: 15px;
            margin-top: 10px;
            width:50vw;
            height: 12vh;
            background-color: #1E2126;
            border: none;
            border-radius: 5px;

            scrollbar-width: thin;
        }

        .buttonPost{
            background-image: linear-gradient(to right, #4E2386, #B82CBB);
            color: white; /* Cambia el color del texto si es necesario */
            text-align: center;
            border: none;
            padding: 10px 20px; /* Ajusta el espaciado según tus necesidades */
            cursor: pointer;
            transition: background-color 0.3s ease; /* Efecto de transición suave */
            height: 5vh;
            width: 14vw;
            border-radius: 3px;
            margin-left: 10vw;
        }

        .titleActivities{
            font-size: 1.5em;
            font-weight: 900;
            display:block;
            margin: 0 auto;
            text-align: center;
            color: #ffffff;
        }

        .nameEvent{
            color: #959191;
            font-size: 1.7em;
            font-weight: 900;
        }

        .titleForum{
            font-size: 1.7em;
            font-weight: 900;
            display:block;
            margin: 0 auto;
            text-align: center;
            color: #ffffff;
        }

        .itemListDetails{
            color: #ffffff;
            font-size: 1.3em;
            font-weight: 900;
            margin: 10px 0;
        }

        .buttonRemoveRegis{
            background-image: linear-gradient(to right, #4E2386, #B82CBB);
            color: white; /* Cambia el color del texto si es necesario */
            text-align: center;
            border: none;
            padding: 10px 20px; /* Ajusta el espaciado según tus necesidades */
            cursor: pointer;
            transition: background-color 0.3s ease; /* Efecto de transición suave */
            height: 7vh;
            width: 12vw;
            margin-left: 3vw;
            margin-bottom: 3vh;
            border-radius: 3px;
        }

        .buttonSeeCodeEntry{
            background-image: linear-gradient(to right, #4E2386, #B82CBB);
            color: white; /* Cambia el color del texto si es necesario */
            text-align: center;
            border: none;
            padding: 10px 20px; /* Ajusta el espaciado según tus necesidades */
            cursor: pointer;
            transition: background-color 0.3s ease; /* Efecto de transición suave */
            height: 7vh;
            width: 12vw;
            margin-left: 3vw;
            margin-bottom: 3vh;
            border-radius: 3px;
        }

        #containerEventDetails{
            border: 1px solid #ffffff;
            display:flex;
            justify-content: space-betwwen;
            align-items: center;
            height: 40%; /*Tiene que esta definida, para que se vea bien en cualquier monitor y para que los div de atendro agarren el 100% de la altura*/
        }

        #activitiesDetails{
            height: 100%;
            width: 40%;
        }

        #dayDetails{
            height: 100%;
            width: 60%;
        }

        #containerForumEvent{
            margin-top: 15px;
            height: 40%;
        }

        #containerTitleEvent{
            height: 20%;
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




            <asp:Panel ID="Panel1" runat="server" BackColor="#16191C" Height="549px">
                <div id="containerTitleEvent">
                    <asp:Label ID="titleEvent" CssClass="nameEvent" runat="server" Text="Nombres del evento"></asp:Label>
                </div>
                <div id="containerEventDetails">
                    <div id="dayDetails">
                        <asp:BulletedList ID="listDayDetails" CssClass="detailsEvent" runat="server">
                            <asp:ListItem Text="Fecha: " class="itemListDetails" runat="server"></asp:ListItem>
                            <asp:ListItem Text="Hora inicio: " class="itemListDetails" runat="server"></asp:ListItem>
                            <asp:ListItem Text="Hora cierre: " class="itemListDetails" runat="server"></asp:ListItem>
                        </asp:BulletedList>
                    </div>
                    <div id="activitiesDetails">
                        <asp:Label ID="titleActivities" CssClass="titleActivities" runat="server" Text="Actividades"></asp:Label>
                        <asp:BulletedList ID="BulletedList1" CssClass="detailsEvent" runat="server">
                            <asp:ListItem Text="Actividad 1" class="itemListDetails" runat="server"></asp:ListItem>
                        </asp:BulletedList>
                    </div>
                </div>
                <div id="containerForumEvent">
                    <asp:Label ID="titleForum" CssClass="titleForum" runat="server" Text="Foro de discusión"></asp:Label>
                    <div style="display: flex; align-items: center; margin-top: 5vh;">
                        <asp:TextBox CssClass="textBoxForumComment" ID="TextBox1" runat="server" Placeholder="Comenté lo que desee, siempre y cuando se mantenga el respeto" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="buttonPost" CssClass="buttonPost" runat="server" Text="Postear" />
                    </div>
                </div>
                <asp:Button ID="buttonRemoveRegis" CssClass="buttonRemoveRegis" runat="server" Text="Retirar inscripción" />
                <asp:Button ID="buttonSeeCodeEntry" CssClass="buttonSeeCodeEntry" runat="server" Text="Visualizar entrada" />
            </asp:Panel>
    </form>
</body>
</html>
