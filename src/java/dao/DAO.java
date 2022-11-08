package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Order;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from PRODUCT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;

    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String sql = "Select * from ACCOUNT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;

    }

    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        String sql = "Select * from [ORDER]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getFloat(4)));
            }
        } catch (Exception e) {
        }
        return list;

    }

    public Order getOrderById(String id) {
        String sql = "Select * from [ORDER] where orderId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Order(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getFloat(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Order> getOrderDetailById(String id) {
        List<Order> list = new ArrayList<>();
        String sql = "select o.orderId, p.productName, p.price, o.quantity \n"
                + "from PRODUCT p inner join [ORDER_DETAIL] o \n"
                + "on p.productID = o.productId \n"
                + "where o.orderId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductById(String id) {
        String sql = "select * from PRODUCT where productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccountById(String id) {
        String sql = "select * from ACCOUNT where accountId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from PRODUCT\n"
                + "where cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "Select * from CATEGORIES";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;

    }

    public List<Product> searchProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * from PRODUCT\n"
                + "where productName like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String pid) {
        String query = "delete from PRODUCT\n"
                + "where productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteOrder(String oid) {
        String query = "delete from [ORDER] where orderId = ?\n"
                + "delete from [ORDER_DETAIL] where orderId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, oid);
            ps.setString(2, oid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addProduct(String name, String image, String price, String title, String category) {
        String query = "insert into PRODUCT\n"
                + "values (?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, category);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void editProduct(String id, String name, String image, String price, String title, String category) {
        String query = "update PRODUCT\n"
                + "set productName = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "cateID = ?\n"
                + "where productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, category);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editAccount(String id, String fullname, String phone, String address, String username, String password, String role) {
        String query = "UPDATE ACCOUNT\n"
                + "set accountName = ?,\n"
                + "phone = ?,\n"
                + "[address] = ?,\n"
                + "username = ?,\n"
                + "[password] = ?,\n"
                + "isAdmin = ?\n"
                + "where accountId =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setString(4, username);
            ps.setString(5, password);
            ps.setString(6, role);
            ps.setString(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void deleteAccount(String id) {
        String query = "delete from ACCOUNT\n"
                + "where accountId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account login(String username, String password) {
        String query = "Select * from ACCOUNT\n"
                + "where username = ?\n"
                + "and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public Account checkAccountExist(String username) {
        String query = "select * from ACCOUNT\n"
                + "where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public void signUp(String fullname, String phone, String address, String username, String password) {
        String sql = "insert into ACCOUNT values(?,?,?,?,?,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setString(4, username);
            ps.setString(5, password);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public List<Product> getTop8() {
        List<Product> list = new ArrayList<>();
        String sql = "Select top 8 * from PRODUCT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getNext8Products(int ammount) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from PRODUCT\n"
                + "ORDER by productID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT 8 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, ammount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//    --------------------------------------------------------------------------

    public Category getCategoryByCid(String id) {
        String sql = "select * from CATEGORIES where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editCategory(String id, String name, String image) {
        String query = "update CATEGORIES\n"
                + "set cname = ?,\n"
                + "cimage = ?\n"
                + "where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCategory(String id) {
        String query = "delete from PRODUCT where cateID = ?\n"
                + "delete from CATEGORIES where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addCategory(String id, String name, String image) {
        String query = "insert into CATEGORIES\n"
                + "values (?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
//    --------------------------------------------------------------------------
    public List<Product> getAllProductByIdDesc() {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from PRODUCT ORDER BY productID DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getAllProductByCategoryAsc() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from PRODUCT ORDER BY cateID ASC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getAllProductByCategoryDesc() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from PRODUCT ORDER BY cateID DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
