<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexAdmins.aspx.cs" Inherits="UNotify.indexAdmins" %>

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
                     <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="img\white-home.png" Width="40px" style="margin-right: 20px;" />
                     <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="img\people.png" Width="40px" style="margin-right: 20px;" OnClick="ImageButton4_Click"/>
                     <asp:Label ID="lbl_colabs" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Añadir Colaborador" style="margin-right: 20px;" />
                     <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="img\new-document.png" Width="40px" style="margin-right: 20px;" OnClick="ImageButton2_Click" />
                     <asp:Label ID="lbl_sugerir" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Crear Evento" style="margin-right: 20px;" />
                     </div>
                 <div style="display: flex; align-items: center; justify-content: flex-end; flex-grow: 1;">
                     <asp:Label ID="lbl_user" runat="server" Font-Names="Segoe UI Light" ForeColor="White" Text="Nombre de Usuario" style="margin-right: 20px;" />
                     <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="img\user.png" Width="40px" OnClick="ImageButton7_Click" />
                 </div>
             </asp:Panel>
            <asp:Panel ID="Panel1" runat="server" BackColor="#16191C" Height="159px">
            </asp:Panel>
        </>
    </form>
</body>
</html>
