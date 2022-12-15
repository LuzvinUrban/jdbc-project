package com.cydeo.jdbctests.utility;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {

     String dbURL="jdbc:oracle:thin:@54.82.190.245:1521:XE";
     String dbUsername="hr";
        String dbPassword="hr";

        /*
        How to INIT VARIABLES?
        --MAC --> ALT + ENTER
        --WINDOWS --ALT + ENTER
         */

        //DriverManager Class getConnection method will help to connect database.
      Connection conn = DriverManager.getConnection(dbURL,dbUsername,dbPassword);


      //it helps us to execute queries.
Statement statement= conn.createStatement();

//ResultSet will store data after execution.It stores only data(there is no table info)
ResultSet rs = statement.executeQuery("select  * from regions");


/* how to run query from java file
click over query(dont choose aywhere
mac- cmd+ enter
windows - cntrl+ enter
-schoose sessions
 */

        
        //getting data
        //next()-> moves cursor forward one row its current position
        
        rs.next();
        
        //pointer shows the first row
        //how to get data
        
       // rs.getInt(index)--> it returns integer.Index sort from 1 into SQL. It refres column position

        
        //it returns int
        System.out.println(rs.getInt(1));//1
        //it returns Stirng
        System.out.println(rs.getString(1));//1

//
        System.out.println(rs.getInt("Region_ID"));
        System.out.println (rs.getString("Region_ID"));

        System.out.println("----first Row");
//get me Europe
        System.out.println(rs.getString(2));//Europe
        System.out.println(rs.getString("Region_name"));//europe
        System.out.println("------Second row");

        rs.next();
        //second row 2- america

        System.out.println(rs.getString(1)+ "- "+ rs.getString(2));
        System.out.println(rs.getString("region_ID")+"-"+rs.getString("Region_NAME"));


        System.out.println("----Third Row");
//3 second row -3 asia
        rs.next();
        System.out.println(rs.getString(1)+ "- "+ rs.getString(2));
        System.out.println(rs.getString("region_ID")+"-"+rs.getString("Region_NAME"));


        System.out.println("----foruth Row-------");

        //4th row  4- Middle east and africa
        rs.next();
        System.out.println(rs.getString(1)+"-"+ rs.getString(2));
        System.out.println(rs.getString("Region_ID")+"-"+ rs.getString("Region_name"));

        while(rs.next()){
            System.out.println("------");
            System.out.println(rs.getString(1)+"-"+rs.getString(2));
        }
        //what if we have 1000 line?




        //row





        //close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
