package entity;

/**
 *
 * @author Bin
 */
public class OrderDetail {
    private int odi; 
    private int pid;
    private int quantity;
    private float price;

    public OrderDetail() {
    }

    public OrderDetail(int odi, int pid, int quantity, float price) {
        this.odi = odi;
        this.pid = pid;
        this.quantity = quantity;
        this.price = price;
    }

    public int getOdi() {
        return odi;
    }

    public void setOdi(int odi) {
        this.odi = odi;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
    
}
