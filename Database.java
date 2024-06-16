package lab6.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author 
 */

public class Database {
    
    private static Connection myConnection = null;
    private static String myURL = myURL = "jdbc:mysql://localhost:3306/cse3209";
    private int result = 0;
    
    public static Connection getConnection() throws ClassNotFoundException {
        
         try{
            Class.forName("com.mysql.jdbc.Driver");
            myConnection = DriverManager.getConnection(myURL, "root", "admin");
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return myConnection;
    }
    
    public void closeConnection() throws ClassNotFoundException{
        try{
            myConnection.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    
}
