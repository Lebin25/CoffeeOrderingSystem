package entity;

public class Account {
    private int accountId;
    private String accountName;
    private String phone;
    private String address;
    private String username;
    private String password;
    private int isAdmin;

    public Account() {
    }

    public Account(int accountId, String accountName, String phone, String address, String username, String password, int isAdmin) {
        this.accountId = accountId;
        this.accountName = accountName;
        this.phone = phone;
        this.address = address;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    

}
