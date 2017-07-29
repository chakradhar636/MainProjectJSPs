package DAO;

/**
 * Created by donuric on 7/27/2017.
 */

import entities.Service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by donuric on 7/26/2017.
 */

import Utilities.JDBCHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import Utilities.JDBCHelper;
import entities.Vehicle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by donuric on 7/13/2017.
 */
public class ServiceDisplay {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cdk","root","CDKcdk11");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    public static List<Service> getRecords(int start, int total){
        List<Service> list=new ArrayList<Service>();
        try{
            Connection con=getConnection();
            PreparedStatement ps;
            ps = con.prepareStatement("select * from service limit "+(start-1)+","+total);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Service e = new Service();
                e.setReg_num(rs.getString(1));
                e.setKms_reading(rs.getDouble(2));
                e.setService_num(rs.getInt(3));
                e.setService_type(rs.getString(4));

                list.add(e);
            }
            return list;
        } catch (SQLException e) {
            System.out.println("OOPs error occured in connecting database " + e.getMessage());
            return null;
        }
        //return null;
    }
}
