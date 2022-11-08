package dao;

import context.DBContext;
import entity.Account;
import entity.Cart;
import entity.Item;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

/**
 *
 * @author Bin
 */
public class OrderDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void addOrder(Account u, Cart cart) throws Exception {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        String query = "Insert into [ORDER]\n"
                + "values(?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setInt(2, u.getAccountId());
            ps.setFloat(3, cart.getTotalMoney());
            ps.executeUpdate();

            String query1 = "select top 1 orderId from [ORDER] order by orderId desc";
            PreparedStatement ps1 = conn.prepareStatement(query1);
            rs = ps1.executeQuery();
            while (rs.next()) {
                int orderId = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String query2 = "insert into ORDER_DETAIL values(?,?,?,?)";
                    PreparedStatement ps2 = conn.prepareStatement(query2);
                    ps2.setInt(1, orderId);
                    ps2.setInt(2, i.getProduct().getProductID());
                    ps2.setInt(3, i.getQuantity());
                    ps2.setFloat(4, i.getPrice());
                    ps2.executeUpdate();
                    
                }
            }
        } catch (SQLException e) {
        }
    }
}
