package com.ccr.igpnp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	
	private String server = "jdbc:sqlserver://localhost;databaseName=IG-PNP;";
    private String login = "sa;";
    private String pass = "123;";
    private static Connection cn;

    public ConnectDB() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection(server + "user=" + login + "password=" + pass);
            System.out.println("The connection is ready");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnectDB() {
        return cn;
    }

}
