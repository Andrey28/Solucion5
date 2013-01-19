<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %> 
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server"> 
void Alta(Object sender, EventArgs args){
    SqlConnection conexion = new SqlConnection("Data Source=PERSONAL\\SQLEXPRESS;Initial Catalog=BD_Solucion1"); 
String sentencia="INSERT into usuarios (nombre,edad,direccion,correo) "+"VALUES(@nombre,@edad,@direccion,@correo)"; 
SqlCommand comando=new SqlCommand (sentencia,conexion); 
int resultado; 
try{ 
conexion.Open(); 
comando.Parameters.Add(new SqlParameter("@nombre",SqlDbType.NVarChar, 10)); 
comando.Parameters["@nombre"].Value = nombre.Text; 
comando.Parameters.Add(new SqlParameter("@edad",SqlDbType.NVarChar, 20)); 
comando.Parameters["@edad"].Value = edad.Text; 
comando.Parameters.Add(new SqlParameter("@direccion", SqlDbType.NVarChar, 20)); 
comando.Parameters["@direccion"].Value = direccion.Text; 
comando.Parameters.Add(new SqlParameter("@correo", SqlDbType.NVarChar, 20)); 
comando.Parameters["@correo"].Value = correo.Text; 
resultado=comando.ExecuteNonQuery(); 
Response.Write("Se ha añadido "+resultado+" registro "+"<a href=Mostrar_Grid.aspx>Ver Usuarios</a>"); 
Response.Write("<br><br>"); 
conexion.Close(); 
}catch(SqlException e){ 
Response.Write("se ha producido una excepción: "+e); 
} 
} 
</script>
<html> 
<head> 
<title>Insertar Nuevo Registro</title> 
</head> 
<body> 
<form runat="server" ID="formulario"> 
<asp:Label runat="server" ID="textoNombre" Text="Nombre" /> 
<asp:TextBox runat="server" ID="nombre" /><br /> 
<asp:Label runat="server" ID="textoEdad" text="Edad"/> 
<asp:TextBox runat="server" ID="edad" /><br /> 
<asp:Label runat="server" ID="Label1" Text="direccion" /> 
<asp:TextBox runat="server" ID="direccion" /><br /> 
<asp:Label runat="server" ID="Label2" Text="correo" /> 
<asp:TextBox runat="server" ID="correo" /><br /> 
<asp:Button OnClick="Alta" runat="server" ID="boton" Text="Añadir" /> 
</form> 
</body> 
</html>