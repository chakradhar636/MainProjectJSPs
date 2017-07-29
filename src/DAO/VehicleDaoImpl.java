package DAO;

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
public class VehicleDaoImpl implements VehicleDao {

    public List<Vehicle> getAllVehicles(int start, int total) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Vehicle> vehicleList = null;
        try{
            con = JDBCHelper.getConnection();
            ps=con.prepareStatement(
                    "select * from vehicle limit "+(start-1)+","+total);
            ps.execute();
            rs = ps.getResultSet();

            while(rs.next()){
                Vehicle e=new Vehicle();
                e.setReg_num(rs.getString(1));
                e.setOwner_name(rs.getString(2));
                e.setVehicle_model(rs.getString(3));
                e.setDate(rs.getString(4));
                e.setPrice(rs.getDouble(5));
                e.setTax(rs.getDouble(6));
                e.setNumbers(rs.getInt(7));
                vehicleList.add(e);
            }
            return vehicleList;
        } catch(SQLException e){
            System.out.println("OOPs error occured in connecting database " + e.getMessage());
            return null;
        }
        finally {
            JDBCHelper.close(rs);
            JDBCHelper.close(ps);
            JDBCHelper.close(con);
        }
        //return null;
    }

    public boolean addVehicle(Vehicle vehicle) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = JDBCHelper.getConnection();
            con.setAutoCommit(false);
            Vehicle vh = findVehicle(vehicle.getVehicle_model());
            if(vh == null) {
                String sql  = "insert into vehicle values(?,?,?,?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1,vehicle.getReg_num());
                ps.setString(2,vehicle.getOwner_name());
                ps.setString(3, vehicle.getVehicle_model());
                ps.setString(4, vehicle.getDate());
                ps.setDouble(5, vehicle.getPrice());
                ps.setDouble(6, vehicle.getTax());
                ps.setInt(7, vehicle.getNumbers());

                ps.executeUpdate();
                con.commit();
            }else{}
            /*
                double price = vh.getPrice();
                double tax = vh.getTax();
                double units = vh.getNumbers();
                String owner=vh.getOwner_name();
                String sql = "update vehicle set owner = ?,price = ?, units = ?, tax = ? where vehicle_model = ?";
                ps = con.prepareStatement(sql);
                ps.setDouble(5, vh.getPrice());
                ps.setInt(7, vh.getNumbers());
                ps.setDouble(6, vh.getTax());
                ps.setString(4, vehicle.getVehicle_model());
                ps.executeUpdate();
                con.commit();*/


        } catch (SQLException e) {
            System.out.println("SQL Error :"+e.getMessage());
            return false;
        } finally {
            JDBCHelper.close(con);
            JDBCHelper.close(ps);
        }
        return false;
    }

    public boolean removeVehicles(String model, int number) {
        return false;
    }

    public Vehicle findVehicle(String model) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = JDBCHelper.getConnection();
            String sql = "Select * from vehicle where vehicle_model = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, model);
            ps.execute();
            rs = ps.getResultSet();
            if(rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getString("reg_num"),rs.getString("owner_name"),rs.getString("vehicle_model"),rs.getString("date"),
                        rs.getDouble("price"), rs.getDouble("tax"), rs.getInt("numbers"));
                return vehicle;
            }
            else{
                return null;
            }

        } catch (SQLException e) {
            System.out.print("Data Base Error"+e.getMessage());
            return null;
        } finally {
            JDBCHelper.close(rs);
            JDBCHelper.close(ps);
            JDBCHelper.close(con);
        }
    }


}
