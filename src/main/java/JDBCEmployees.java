import com.mysql.cj.jdbc.Driver;

import java.sql.*;


public class JDBCEmployees {
    //DONT FORGET TO THROW AN EXCEPTION 👀
    public static void main(String[] args) throws SQLException {
        //STEP ONE! Register THE DRIVER!!!!!!
        DriverManager.registerDriver(new Driver());
        //STEP TWOOOO! CREATE A CONNECTION!!!!!!
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/employees?allowPublicKeyRetrieval=true&useSSL=false",
                "root",
                "codeup"
        );
        //STEP THREE! CREATE A STATEMENT
        Statement stmt = conn.createStatement();
        //STEP FOUR!!! READY.... EXECUTE!
        String query = "SELECT first_name FROM employees";
        ResultSet rs = stmt.executeQuery("SELECT first_name FROM employees LIMIT 10");
        //STEP FIVE, SEE RESULTS....
        rs.next();
        while (rs.next()) {
                System.out.println("===================");
                System.out.println(rs.getString(1));

        }
    }
}
