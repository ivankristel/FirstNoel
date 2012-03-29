package firstnoel;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ivankristel
 */
public class FirstNoel {
    public static void main(String[] args) {
        HomeView home_view = new HomeView();
        home_view.setVisible(true);
        
        Connection conn = null;

           try
           {
               String userName = "testuser";
               String password = "test623";
               String url = "jdbc:mysql://localhost:3306/firstnoel?allowMultiQueries=true";
              // Class.forName ("com.mysql.jdbc.Driver").newInstance ();
               conn = (Connection) DriverManager.getConnection (url, userName, password);
               System.out.println ("Database connection established");
           }
           catch (Exception e)
           {
               System.err.println ("Cannot connect to database server");
           }
           finally
           {
               if (conn != null)
               {
                   try
                   {
                       conn.close ();
                       System.out.println ("Database connection terminated");
                   }
                   catch (Exception e) { /* ignore close errors */ }
               }
           }
        
        
    }
}
