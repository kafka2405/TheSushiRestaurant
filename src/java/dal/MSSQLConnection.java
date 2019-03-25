package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class MSSQLConnection {

    private static Connection con = null;
    private static String connectionURL = "";
    private static String databaseUsername = "";
    private static String databasePassword = "";
    private static String photoPath = "";

    static{
        initConfig();
    }
    
    /**
     * Get data about database from context.xml
     */
    public static void initConfig() {
        try {
            InitialContext initialContext = new InitialContext();
            Context environmentContext = (Context) initialContext.lookup("java:/comp/env");
            connectionURL = (String) environmentContext.lookup("connectionURL");
            databaseUsername = (String) environmentContext.lookup("databaseUsername");
            databasePassword = (String) environmentContext.lookup("databasePassword");
            photoPath = (String) environmentContext.lookup("photoPath");
        } catch (NamingException e) {
            System.out.println("Can't read the config!");
            e.printStackTrace();
        }
    }

    /**
     * Get connection to MSSQL Server
     *
     * @return Connection
     */
    public static Connection getConnection() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(connectionURL, databaseUsername, databasePassword);
        } catch (Exception ex) {
            throw ex;
        }
        return con;
    }

    public static String getPhotoPath() {
        return photoPath;
    }

    /**
     * Close connection to MSSQL Server
     *
     * @param connection
     */
    public static void closeConnection(Connection connection) throws Exception {
        if (connection != null) {
            connection.close();
        }
    }

    /**
     * Close PreparedStatement to MSSQL Server
     *
     * @param ps
     */
    public static void closePreparedStatement(PreparedStatement ps) throws Exception {
        if (ps != null) {
            ps.close();
        }
    }

    /**
     * Close ResultSet to MSSQL Server
     *
     * @param rs
     */
    public static void closeResultSet(ResultSet rs) throws Exception {
        if (rs != null) {
            rs.close();
        }
    }

}
