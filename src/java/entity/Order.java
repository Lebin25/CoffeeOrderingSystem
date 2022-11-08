package entity;

/**
 *
 * @author Bin
 */
public class Order {
    private int id;
    private String date;
    private int userid;
    private float totalMoney;

    public Order() {
    }

    public Order(int id, String date, int userid, float totalMoney) {
        this.id = id;
        this.date = date;
        this.userid = userid;
        this.totalMoney = totalMoney;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public float getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(float totalMoney) {
        this.totalMoney = totalMoney;
    }
    
    
}
