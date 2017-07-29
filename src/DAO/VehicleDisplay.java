package DAO;

/**
 * Created by donuric on 7/26/2017.
 */

import Utilities.JDBCHelper;
import entities.Vehicle;

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
public class VehicleDisplay {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cdk","root","CDKcdk11");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    public static List<Vehicle> getRecords(int start,int total){
        List<Vehicle> list=new ArrayList<Vehicle>();
        try{
            Connection con=getConnection();
            PreparedStatement ps;
            ps = con.prepareStatement("select * from vehicle limit "+(start-1)+","+total);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Vehicle e = new Vehicle();
                e.setReg_num(rs.getString(1));
                e.setOwner_name(rs.getString(2));
                e.setVehicle_model(rs.getString(3));
                e.setDate(rs.getString(4));
                e.setPrice(rs.getDouble(5));
                e.setTax(rs.getDouble(6));
                e.setNumbers(rs.getInt(7));
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