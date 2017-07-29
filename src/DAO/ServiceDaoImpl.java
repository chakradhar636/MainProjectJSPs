package DAO;
import DAO.ServiceDao;
import DAO.VehicleDao;
import Utilities.JDBCHelper;
import entities.Service;
import entities.Vehicle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by donuric on 7/13/2017.
 */
public class ServiceDaoImpl implements ServiceDao {

    public boolean addService(Service service) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = JDBCHelper.getConnection();
            con.setAutoCommit(false);

                String sql = "insert into service values(?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, service.getReg_num());
                ps.setDouble(2,service.getKms_reading());
                ps.setInt(3,service.getService_num());
                ps.setString(4,service.getService_type());

                ps.executeUpdate();
                con.commit();

        } catch (SQLException e) {
            System.out.println("SQL Error :" + e.getMessage());
            return false;
        } finally {
            JDBCHelper.close(con);
            JDBCHelper.close(ps);
        }
        return false;
    }
}
