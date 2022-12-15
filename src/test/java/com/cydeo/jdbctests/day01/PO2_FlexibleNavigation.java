package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO2_FlexibleNavigation {



        String dbURL="jdbc:oracle:thin:@54.82.190.245:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager Class getCOnnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);


        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select  first_name,last_name from EMPLOYEES");

        //first row
        rs.next();
        System.out.println(rs.getString(1)+" "+ rs.getString(2));


        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        /*
        ResultSet.TYPE_SCROLL_INSENSITIVE --> to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY        --> To dont update anything from database

         */

        // What if I want to get last data
        rs.last();
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        System.out.println("--- GET ROW -----");
        // how many row we have
        // getRow() --> the current row number; 0 if there is no current row
        int rowNumber = rs.getRow();
        System.out.println(rowNumber);  // 107



        System.out.println("--- ABSOLUTE  -----");
        // jump into specified row
        //rs.absolute(rowNumber) -->true if the cursor is moved to a position in this ResultSet object; false if the cursor is before the first row or after the last row
        rs.absolute(10);  // David Bernstein
        System.out.println(rs.getString(1)+" "+rs.getString(2));
        System.out.println(rs.getRow());   // 10


        System.out.println("--- PREVIOUS   -----");
        // rs.previous()
        rs.previous();  // --> true if the cursor is now positioned on a valid row; false if the cursor is positioned before the first row
        System.out.println(rs.getRow());   // 9
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        //turn back to beginning


















        // close connections
        rs.close();
        statement.close();
        conn.close();

    }

}

