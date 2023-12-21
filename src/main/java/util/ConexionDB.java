package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexionDB {
    
    private static final String URL = "jdbc:mysql://localhost:3306/miBaseDeDatos?useSSL=false&requireSSL=false";
    private static final String USER = "root";
    private static final String PASS = "Saltalabanca0765";
    
    
    static {
        try {
        
           Class.forName("com.mysql.cj.jdbc.Driver");
            
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("error al cargar el controlador JDBC");
        }
    }
    
    
    public static Connection conectar() throws SQLException {
       return DriverManager.getConnection(URL, USER, PASS);
    }
    
}
