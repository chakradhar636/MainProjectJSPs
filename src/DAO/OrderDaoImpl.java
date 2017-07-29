package DAO;

import Utilities.JDBCHelper;
import entities.Orders;
import entities.SpareParts;
import entities.Vehicle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by prajapas on 7/13/2017.
 */
public class OrderDaoImpl implements OrderDao {

    public List<Orders> getAllOrders() {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Orders> OrderList = null;
        try{
            con = JDBCHelper.getConnection();
            String sql = "select * from orders";
            ps = con.prepareStatement(sql);
            ps.execute();
            rs = ps.getResultSet();
            while(rs.next()){
                Orders or = new Orders(rs.getString("reg_num"),rs.getString("owner_name"),rs.getString("who"),rs.getString("id"), rs.getString("vevhile_model"),
                        rs.getString("sparepartid"),rs.getString("sparepartname"), rs.getString("operation"),rs.getInt("unit"), rs.getDouble("price"),
                        rs.getDouble("tax"), new SimpleDateFormat("dd/MM/yyyy").parse(rs.getString("date")));
                OrderList.add(or);
            }
            return OrderList;
        } catch (SQLException e) {
            System.out.println("OOPs error occured in connecting database " + e.getMessage());
            return null;
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        } finally {
            JDBCHelper.close(rs);
            JDBCHelper.close(ps);
            JDBCHelper.close(con);
        }
    }

    public List<Orders> getOrders(Date from, Date to) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Orders> OrderList = new ArrayList<Orders>();
        try{
            con = JDBCHelper.getConnection();
            String sql = "select * from orders";
            ps = con.prepareStatement(sql);
            ps.execute();
            rs = ps.getResultSet();
            while(rs.next()){
                Date tempDate = new SimpleDateFormat("dd/MM/yyyy").parse(rs.getString("date"));
                if(tempDate.after(from) && tempDate.before(to)) {
                    Orders or = new Orders(rs.getString("reg_num"),rs.getString("owner_name"),rs.getString("who"),rs.getString("id"), rs.getString("vechile_model"),
                            rs.getString("sparepartid"),rs.getString("sparepartname"), rs.getString("operation"),rs.getInt("unit"),
                            rs.getDouble("price"), rs.getDouble("tax"), new SimpleDateFormat("dd/MM/yyyy").parse(rs.getString("date")));
                    //System.out.println(or);
                    OrderList.add(or);
                }
            }
            return OrderList;
        } catch (SQLException e) {
            System.out.println("OOPs error occured in connecting database " + e.getMessage());
            return null;
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        } finally {
            JDBCHelper.close(rs);
            JDBCHelper.close(ps);
            JDBCHelper.close(con);
        }
    }

    public boolean placeOrder(Orders order) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = JDBCHelper.getConnection();
            con.setAutoCommit(false);
            String sql = "insert into orders values (?,?,?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,order.getReg_num());
            ps.setString(2,order.getOwner_name());
            ps.setString(4,order.getOrderedBy());
            ps.setString(3, order.getOrderId());
            ps.setString(5, order.getVehicleModel());
            ps.setString(11, order.getSparePartId());
            ps.setString(12, order.getSparePartName());
            ps.setString(6, order.getOperation());
            ps.setInt(8, order.getNumbers());
            ps.setDouble(9, order.getPrice());
            ps.setDouble(10, order.getTax());
            //System.out.print(order.getDate().toString());
            ps.setString(7, order.getDate());
            ps.executeUpdate();
            if(order.getSparePartId().equals("null")){
                Vehicle vehicle = new Vehicle(order.getReg_num(),order.getOwner_name(),order.getDate(),order.getVehicleModel(), order.getPrice(), order.getTax(), order.getNumbers());
                VehicleDaoImpl vd = new VehicleDaoImpl();
                vd.addVehicle(vehicle);
            }
            else{
                SpareParts spareParts = new SpareParts(order.getSparePartId(), order.getSparePartName(), order.getVehicleModel(), order.getPrice(), order.getTax(), order.getNumbers());
                SparePartsDaoImpl sp = new SparePartsDaoImpl();
                sp.addSparePart(spareParts);
            }
            con.commit();
            return true;
        } catch (SQLException e) {
            System.out.println("OOPs error occured in connecting database " + e.getMessage());
            return false;
        }  finally {
            JDBCHelper.close(rs);
            JDBCHelper.close(ps);
            JDBCHelper.close(con);
        }
    }
}
