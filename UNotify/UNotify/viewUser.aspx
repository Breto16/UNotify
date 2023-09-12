<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UNotify.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .buttonDelete{
            border: 2px solid red;
        }
    </style>

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
            <asp:Panel ID="Panel1" runat="server" BackColor="#9332C0" Height="371px">
                <asp:ImageMap ID="perfilImage" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px">
                </asp:ImageMap>
                <asp:Label ID="perfilName" runat="server" Text="Nombre de usuario"></asp:Label><br />

                <asp:Label ID="labelEmailAsociado" runat="server" Text="Email asociado"></asp:Label><br />
                <asp:TextBox ID="textBoxEmailAsociado" runat="server"></asp:TextBox><br /><br />

                <asp:Label ID="labelCedulaAsociada" runat="server" Text="Cédula asociada"></asp:Label><br />
                <asp:TextBox ID="textBoxCedulaAsociada" runat="server"></asp:TextBox><br /><br />

                <asp:Label ID="labelTelefono" runat="server" Text="Número de teléfono"></asp:Label><br />
                <asp:TextBox ID="textBoxTelefono" runat="server"></asp:TextBox><br /><br />

                <asp:Button ID="buttonDelete" runat="server" Text="Eliminar cuenta" CssClass="buttonDelete"/>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
