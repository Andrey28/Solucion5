<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ver_Tareas.aspx.cs" Inherits="Solucion1.Miembros.Ver_Tareas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="Tabla_Tareas" runat="server" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            DataKeyNames="id_tarea">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_tarea" HeaderText="id_tarea" 
                    SortExpression="id_tarea" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" 
                    SortExpression="Usuario" />
                <asp:BoundField DataField="Nom_Tarea" HeaderText="Nom_Tarea" 
                    SortExpression="Nom_Tarea" />
                <asp:BoundField DataField="Fech_Ini" HeaderText="Fech_Ini" 
                    SortExpression="Fech_Ini" />
                <asp:BoundField DataField="Fech_Venc" HeaderText="Fech_Venc" 
                    SortExpression="Fech_Venc" />
                <asp:BoundField DataField="Fech_Term" HeaderText="Fech_Term" 
                    SortExpression="Fech_Term" />
                <asp:BoundField DataField="Coment_Tarea" HeaderText="Coment_Tarea" 
                    SortExpression="Coment_Tarea" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tareas_usuariosConnectionString %>" 
            SelectCommand="SELECT * FROM [tareas_usu]" 
            DeleteCommand="DELETE FROM [tareas_usu] WHERE [id_tarea] = @id_tarea" 
            InsertCommand="INSERT INTO [tareas_usu] ([Usuario], [Nom_Tarea], [Fech_Ini], [Fech_Venc], [Fech_Term], [Coment_Tarea]) VALUES (@Usuario, @Nom_Tarea, @Fech_Ini, @Fech_Venc, @Fech_Term, @Coment_Tarea)" 
            UpdateCommand="UPDATE [tareas_usu] SET [Usuario] = @Usuario, [Nom_Tarea] = @Nom_Tarea, [Fech_Ini] = @Fech_Ini, [Fech_Venc] = @Fech_Venc, [Fech_Term] = @Fech_Term, [Coment_Tarea] = @Coment_Tarea WHERE [id_tarea] = @id_tarea">
            <DeleteParameters>
                <asp:Parameter Name="id_tarea" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Nom_Tarea" Type="String" />
                <asp:Parameter DbType="Date" Name="Fech_Ini" />
                <asp:Parameter DbType="Date" Name="Fech_Venc" />
                <asp:Parameter DbType="Date" Name="Fech_Term" />
                <asp:Parameter Name="Coment_Tarea" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Nom_Tarea" Type="String" />
                <asp:Parameter DbType="Date" Name="Fech_Ini" />
                <asp:Parameter DbType="Date" Name="Fech_Venc" />
                <asp:Parameter DbType="Date" Name="Fech_Term" />
                <asp:Parameter Name="Coment_Tarea" Type="String" />
                <asp:Parameter Name="id_tarea" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
    
    </div>
    <p>
        <asp:LinkButton ID="Index" PostBackUrl="~/Default.aspx" runat="server">
            Volver.
        </asp:LinkButton>
        </p>
        
    </form>
</body>
</html>
