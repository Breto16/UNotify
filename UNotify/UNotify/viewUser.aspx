<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewUser.aspx.cs" Inherits="UNotify.viewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
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
            font-weight: 900;
        }

        .textBoxInfo{
            border: 1px solid #9332C0;
            border-radius: 10px;
            width: 40%;
            height:7%;
            background-color: #16191C;
            color: #ffffff;
        }

        .panelInfoUser{
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .buttonDelete{
            background-color: #16191C;
            margin-left: 20px;
            border: 2px solid red;
            border-radius: 5px;
            width: 20%;
            height: 10%;
            color: #ffffff;
        }

        .userContainer{
            border: 2px solid #9332C0;
            border-radius: 10px;
            display: inline-block;
            height: 60%;
            width: 75%;
            padding: 20px;
        }
    </style>

</head>
<body id="PageBody" runat="server">
    <form id="form1" runat="server">
            <asp:Panel ID="Panel2" runat="server" display="flex" BackColor="#1E2126" Height="45px" HorizontalAlign="Right">
                <asp:ImageButton ID="ImageButton8" runat="server" Float="right" Height="40px" Width="40px" ImageUrl="img\logout.png"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="img\people.png" Width="40px" />
                <asp:Label ID="lbl_colabs" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Añadir Colaborador"></asp:Label>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="img\explorar.png" Width="40px" />
                <asp:Label ID="lbl_explorar" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Explorar"></asp:Label>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" Width="40px" />
                <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Sugerir Evento"></asp:Label>
                <asp:ImageButton ID="ImageButton6" runat="server" Height="40px" ImageUrl="img\calendar.png" Width="40px" />
                <asp:Label ID="Label2" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Calendario"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" ></asp:Label>
                <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px"/>
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server" BackColor="#16191C" Height="524px" CssClass="panelInfoUser">
                <div class="userContainer">
                    <asp:ImageMap ID="perfilImage" runat="server" Height="60px" ImageUrl="img\user.png" Width="60px">
                    </asp:ImageMap>
                    <asp:Label ID="perfilNameTitle" CssClass="titleUser" runat="server" Text="Nombre de usuario"></asp:Label><br />

                    <asp:Label ID="labelEmailAsociado" CssClass="labelInfo" runat="server" Text="Email asociado"></asp:Label><br />
                    <asp:TextBox ID="textBoxEmailAsociado" CssClass="textBoxInfo" runat="server" ReadOnly="true"></asp:TextBox><br /><br />

                    <asp:Label ID="labelCedulaAsociada" CssClass="labelInfo" runat="server" Text="Cédula asociada"></asp:Label><br />
                    <asp:TextBox ID="textBoxCedulaAsociada" CssClass="textBoxInfo" runat="server" ReadOnly="true"></asp:TextBox><br /><br />

                    <asp:Label ID="labelEsColab" CssClass="labelInfo" runat="server" Text="Es colaborador:"></asp:Label><br />
                    <asp:TextBox ID="textEsColab" CssClass="textBoxInfo" runat="server" ReadOnly="true"></asp:TextBox><br /><br />

                    <asp:Button ID="buttonDelete" runat="server" Text="Eliminar cuenta" CssClass="buttonDelete"/>
                </div>
            </asp:Panel>
    </form>
</body>
</html>
