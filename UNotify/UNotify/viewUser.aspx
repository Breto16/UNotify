<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewUser.aspx.cs" Inherits="UNotify.viewUser" %>

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

        .titleUser{
            color: #ffffff;
            display: inline-block;
            font-size: 1.6em;
            font-weight: 900;
            margin-bottom: 20px;
        }

        .labelInfo{
            color: #ffffff;
            font-size: 1.3em;
            
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

        .panelInfoUser{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .buttonDelete{
            background-color: #16191C;
            margin-left: 20px;
            border: 2px solid red;
            border-radius: 5px;
            width: 25vw;
            height: 10vh;
            color: #ffffff;
        }

        .userContainer{
            border: 2px solid #9332C0;
            border-radius: 10px;
            display: inline-block;
            height: auto;
            width: 75%;
            padding: 20px;
            align-items: center;
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
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="40px" Width="40px" ImageUrl="img\logout.png" OnClick="ImageButton8_Click" />
                </div>
                <div style="display: flex; align-items: center; justify-content: center; margin-right: 20px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" style="margin-right: 20px;" OnClick="ImageButton1_Click" />
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="img\people.png" Width="40px" style="margin-right: 20px;"/>
                    <asp:Label ID="lbl_colabs" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Añadir Colaborador" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="img\explorar.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_explorar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Explorar" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="img\new-document.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Sugerir Evento" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="40px" ImageUrl="img\calendar.png" Width="40px" style="margin-right: 20px;" />
                    <asp:Label ID="lbl_calendar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Calendario" style="margin-right: 20px;" />
                </div>
                <div style="display: flex; align-items: center; justify-content: flex-end; flex-grow: 1;">
                    <asp:Label ID="lbl_user" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" style="margin-right: 20px;" />
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px" />
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server" BackColor="#16191C" CssClass="panelInfoUser">
                <div class="userContainer">
                    <asp:ImageMap ID="perfilImage" runat="server" Height="60px" ImageUrl="img\user.png" Width="60px">
                    </asp:ImageMap>
                    <asp:Label ID="perfilNameTitle" CssClass="titleUser" runat="server" Text="Nombre de usuario" Font-Names="Segoe UI"></asp:Label><br />

                    <asp:Label ID="labelEmailAsociado" CssClass="labelInfo" runat="server" Text="Email asociado" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                    <asp:TextBox ID="textBoxEmailAsociado" CssClass="textBoxInfo" runat="server" ReadOnly="true" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br /><br />

                    <asp:Label ID="labelCedulaAsociada" CssClass="labelInfo" runat="server" Text="Cédula asociada" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                    <asp:TextBox ID="textBoxCedulaAsociada" CssClass="textBoxInfo" runat="server" ReadOnly="true" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br /><br />

                    <asp:Label ID="labelEsColab" CssClass="labelInfo" runat="server" Text="Es colaborador:" Font-Names="Segoe UI" Font-Size="X-Large"></asp:Label><br />
                    <asp:TextBox ID="textEsColab" CssClass="textBoxInfo" runat="server" ReadOnly="true" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox><br /><br />

                    <asp:Button ID="buttonDelete" runat="server" Text="Eliminar cuenta" CssClass="buttonDelete" Font-Names="Segoe UI Light" Font-Size="X-Large"/>
                </div>
            </asp:Panel>
    </form>
</body>
</html>
