package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author miharimeedum
 */
public class JDBCConnection {

    // Database URL, username, and password
    private static final String DB_URL = "jdbc:mysql://localhost:3306/noir-movie";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";
    private static Connection connection = null;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            if (connection != null) {
                System.out.println("Connection established successfully!");
            } else {
                System.out.println("Failed to establish connection.");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection failed!");
            e.printStackTrace();
        } finally {
//            if (connection != null) {
//                try {
//                    connection.close();
//                    System.out.println("Connection closed.");
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
        }
        return connection;
    }

    public static void connectionClose(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Connection closed.");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
