package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    private String USERNAME = "root";
    private String PASSWORD = "Abrelata$7";
    private String DATABASE = "IMC";
    private String CLASSNAME = "com.mysql.cj.jdbc.Driver";
    private String URL = "jdbc:mysql://192.168.64.2/"+DATABASE;
    private Connection con;
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            
        }catch(ClassNotFoundException | SQLException e) {
            System.err.println("ERROR "+ e);
        }
    }
    
    public Connection getConexion(){
        return con;
        
        
    }
    
            
}
