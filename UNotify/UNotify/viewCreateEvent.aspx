<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UNotify.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body id="PageBody" runat="server">
    <form id="form1" runat="server">
        <div style="height: 385px">
            <asp:Panel ID="Panel2" runat="server" display="flex" BackColor="#1E2126" Height="45px" HorizontalAlign="Right">
                <asp:ImageButton ID="ImageButton8" runat="server" Float="right" Height="40px" Width="40px" ImageUrl="img\logout.png"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="img\people.png" Width="40px" />
                <asp:Label ID="lbl_colabs" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Añadir Colaborador"></asp:Label>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="img\explorar.png" Width="40px" />
                <asp:Label ID="lbl_explorar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Explorar"></asp:Label>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="img\new-document.png" Width="40px" OnClick="ImageButton2_Click"/>
                <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Sugerir Evento"></asp:Label>
                <asp:ImageButton ID="ImageButton6" runat="server" Height="40px" ImageUrl="img\calendar.png" Width="40px" />
                <asp:Label ID="Label2" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Calendario"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" ></asp:Label>
                <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px"/>
</asp:Panel>
            <asp:Panel ID="Panel1" runat="server" BackColor="#9332C0" Height="345px">
                <asp:Label ID="createEventTitle" runat="server" Text="Crear nuevo evento" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                <asp:Label ID="labelNameEvent" runat="server" Text="Ingresa el nombre del evento"></asp:Label><br />
                <asp:TextBox ID="textBoxNameEvent" runat="server" Placeholder="Puede contener hasta 90 caracteres"></asp:TextBox><br />

                <asp:Label ID="labelDateTimeEvent" runat="server" Text="I">Ingresa el dia y la hora (inicio-fin) del evento</asp:Label><br />
                <asp:TextBox ID="textBoxDateTimeEvent" runat="server"></asp:TextBox><br />

                <asp:Label ID="labelCapacityMax" runat="server" Text="Ingresa la capacidad máxima de personas del evento"></asp:Label><br />
                <asp:TextBox ID="textBoxCapacityMax" runat="server"></asp:TextBox><br />

                <asp:Label ID="labelActivities" runat="server" Text="Agrega las actividades que se harán en el evento"></asp:Label><br />
                <asp:TextBox ID="textBoxActivities" runat="server"></asp:TextBox><br /><br />

                <asp:Button ID="buttonCreateEvent" runat="server" Text="Crear Evento" />
 
                <div id="containerColabas">
                    <asp:Label ID="titleColabs" runat="server" Text="Agregar colaboradores" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="* Username colaborador"></asp:Label>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
