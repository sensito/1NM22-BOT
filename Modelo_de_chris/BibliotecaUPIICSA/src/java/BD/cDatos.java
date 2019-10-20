

package BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class cDatos {
    
    private String usrBD;
    private String passBD;
    private String urlBD;
    private String driverClassName;
    private Connection conn = null;
    private Statement estancia;

    public cDatos() {
        //poner los datos apropiados
        this.usrBD = "root";
        this.passBD = "";
        this.urlBD = "jdbc:mysql://localhost:3306/Unravel";
        this.driverClassName = "com.mysql.jdbc.Driver";
    }
    
    
    //Conexion a la BD
    public void conectar() throws SQLException {
        try {
            Class.forName(this.driverClassName).newInstance();
            this.conn = DriverManager.getConnection(this.urlBD, this.usrBD, this.passBD);
 
        } catch (Exception err) {
            System.out.println("Error " + err.getMessage());
        }
    }
    
    //Cerrar la conexion de BD
    public void cierraConexion() throws SQLException {
        this.conn.close();
    }
    
    //Metodos para ejecutar sentencias SQL
    public ResultSet consulta(String consulta) throws SQLException {
        this.estancia = (Statement) conn.createStatement();
        return this.estancia.executeQuery(consulta);
    } 
}`