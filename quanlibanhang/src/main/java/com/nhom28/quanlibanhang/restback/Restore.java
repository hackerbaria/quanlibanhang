package com.nhom28.quanlibanhang.restback;

import java.awt.HeadlessException;
import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.JOptionPane;

public class Restore {

	
	private static ResultSet res;
    private static Connection con;
    private Statement st;
    private int BUFFER = 99999;

	
	public void Restoredbfromsql(String host, String port, String dbName, String dbUserName, String dbPassword, String source) {
        
		String Mysqlpath = getMysqlBinPath(dbUserName, dbPassword, dbName);
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();            
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dbName, dbUserName, dbPassword);
            st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {
            e.printStackTrace();
        }



        System.out.println(Mysqlpath);
        Process runtimeProcess = null;

		try {
           
            /*NOTE: Used to create a cmd command*/
            /*NOTE: Do not create a single large string, this will cause buffer locking, use string array*/
            String[] executeCmd = new String[]{Mysqlpath + "mysqldump ", dbName, "-u" + dbUserName, "-p" + dbPassword, "-e", " source " + source};

            String command = Mysqlpath+ "mysql --host=" + host + " --port=" + port +" --user=" + dbUserName + " --password=" + dbPassword + " "
                    + dbName + " < " + source;
            
            System.out.println(command);
            
            /*NOTE: processComplete=0 if correctly executed, will contain other values if not*/
            runtimeProcess = Runtime.getRuntime().exec(command);
            try {
				System.out.println(runtimeProcess.waitFor());
			} catch (InterruptedException e) {
					e.printStackTrace();
			}
            //int processComplete = runtimeProcess.waitFor();

            /*NOTE: processComplete=0 if correctly executed, will contain other values if not*/
           // if (processComplete == 0) {
           //     JOptionPane.showMessageDialog(null, "Successfully restored from SQL : " + source);
         //   } else {
         //       JOptionPane.showMessageDialog(null, "Error at restoring");
           //     System.out.println();
           // }


            // | InterruptedException | HeadlessException
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null, "Error at Restoredbfromsql" + ex.getMessage());
            System.out.println(ex);
        }

    }
	
	public String getMysqlBinPath(String user, String password, String db) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print("co van de ve driver mysql");
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, user, password);
            st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {

            System.out.print("Khong the ket noi voi DB");
            e.printStackTrace();
        }



        String a = "";


        try {
            res = st.executeQuery("select @@basedir");
            while (res.next()) {
                a = res.getString(1);
            }
        } catch (Exception eee) {
            eee.printStackTrace();
        }
        a = a + "/bin/";
        System.err.println("Mysql path is :" + a);
        return a;

    }
}
