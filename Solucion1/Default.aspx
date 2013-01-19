    <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Solucion1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
    <h2>
        Pagina de Inicio!
    </h2>
    </div>

    <div>
        <asp:LoginView ID="LoginView1" runat="server">

        <AnonymousTemplate>
        <p>Por favor introduce tus datos para poder acceder a tu lista de tareas diaria.</p>

            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#333333" CreateUserText="Registrate" 
                CreateUserUrl="~/RegistroUsuarios.aspx">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
        </AnonymousTemplate>
        
        <LoggedInTemplate>
        <p>
        Bienvenido, 
            <asp:LoginName ID="LoginName1" runat="server" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
        <p>
        <asp:LinkButton ID="Add_Tarea" PostBackUrl="~/Miembros/Add_Tarea.aspx" runat="server">
            Agregar Nueva Tarea 
        </asp:LinkButton>
        </p>
        <p>
        <asp:LinkButton ID="Ver_Tareas" PostBackUrl="~/Miembros/Ver_Tareas.aspx" runat="server">
            Ver Todas Las Tareas
        </asp:LinkButton>
        </p>
        <p>
        <asp:LinkButton ID="Ver_Pendientes" PostBackUrl="~/Miembros/Ver_Pendiente.aspx" runat="server">
            Ver Todas Las Tareas Pendientes
        </asp:LinkButton>
        </p>
        </LoggedInTemplate>
        </asp:LoginView>
    </div>
    
    <p>
        Sistema CRM para control de tares diarias version Beta 1.3.
    </p>
</asp:Content>
