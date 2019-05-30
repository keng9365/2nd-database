package ConnectPtoNMusic;
import java.sql.*;
public class Connect {
    public static Connection ConnectDataBase()
    {
        Connection con = null;
        try
           {
               String userName = "root";
               String password = "12345678";
               String url = "jdbc:mysql://localhost:3306/PtoNMusic";
               con = DriverManager.getConnection (url, userName, password);
               System.out.println ("Database connection suscessed...");
               return con;
           }
           catch (Exception e)
           {
               System.out.println(e.getMessage());
           }
        return null ;
    }
}
