package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO3_MetaDataTest {
    String dbURL="jdbc:oracle:thin:@54.82.190.245:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");

// DatabaseMetaData = it is information about database itself
     DatabaseMetaData dbMetaData =   conn.getMetaData();

        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDriverVersion());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverName());
        System.out.println(dbMetaData.getDriverVersion());

//ResultSetMetaData = it provides information about table upper side (columnNames,ColumnCount)
        ResultSetMetaData rsmd = rs.getMetaData();



      //how many column we have
     int columnCount =  rsmd.getColumnCount();
        System.out.println(columnCount);


        //get me column name from index 5
        System.out.println(rsmd.getColumnName(3));
        //it will provided columnIndex name


        System.out.println("----- PRINT ALL DATA DYNAMIC ----- ");
        // EMPLOYEE_ID - 1
        // FIRST_NAME  - Steven
        // iterate each row
        while(rs.next()){

            // iterate each column
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");
            }
            System.out.println();
        }



        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}