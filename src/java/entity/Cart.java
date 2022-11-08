package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bin
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getProductID() == id) {
                return i;
            }
        }
        return null;
    }
    
    public void addItem(Item  t){
        if(getItemById(t.getProduct().getProductID()) != null){
            Item m = getItemById(t.getProduct().getProductID());
            m.setQuantity(m.getQuantity()+t.getQuantity());
        }else 
            items.add(t);
    }
    
    public void removeItem(int id){
        if(getItemById(id) != null){
            items.remove(getItemById(id));
        }
    }
    
    public float getTotalMoney(){
        float t = 0;
        for (Item i : items) {
            t+=(i.getQuantity()*i.getProduct().getPrice());
        }
        return t;
    }
}
