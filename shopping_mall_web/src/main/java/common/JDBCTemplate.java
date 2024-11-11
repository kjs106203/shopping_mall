package common;

import java.sql.*;

public class JDBCTemplate {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            System.out.println("[Error] Class.forName()");
            e.printStackTrace();
        }
        String url = "jdbc:oracle:thin:@//localhost:1521/SPDB";
        String user = "SYSTEM";
        String pw = "1234";

        try {
            con = DriverManager.getConnection(url, user, pw);
        } catch (SQLException e) {
            System.out.println("[Error] getconnection");
            e.printStackTrace();
        }
        return con;
    }

    public void close(Connection con) {
        try {
            con.close();
        } catch (SQLException e) {
            System.out.println("[Error] con.close");
            e.printStackTrace();
        }
    }

    public void close(Statement st) {
        try {
            st.close();
        } catch (SQLException e) {
            System.out.println("[Error] st.close");
            e.printStackTrace();
        }
    }

    public void close(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException e) {
            System.out.println("[Error] rs.close");
            e.printStackTrace();
        }
    }

    public void commit(Connection con) {
        try {
            con.commit();
        } catch (SQLException e) {
            System.out.println("[Error] commit");
            e.printStackTrace();
        }
    }

    public void rollback(Connection con) {
        try {
            con.rollback();
        } catch (SQLException e) {
            System.out.println("[Error] rollback");
            e.printStackTrace();
        }
    }

}
