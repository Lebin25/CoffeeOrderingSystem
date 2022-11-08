package entity;

/**
 *
 * @author Bin
 */
public class Product {

    private int productID;
    private String productName;
    private String image;
    private float price;
    private String title;
    private int cateID;

    public Product() {
    }

    public Product(int productID, String productName, String image, float price, String title, int cateID) {
        this.productID = productID;
        this.productName = productName;
        this.image = image;
        this.price = price;
        this.title = title;
        this.cateID = cateID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", image=" + image + ", price=" + price + ", title=" + title + ", cateID=" + cateID + '}';
    }
    
    
}
