package bean;

import java.io.Serializable;

public class StudentBean implements Serializable {

    private int sid;
    private String name;
    private String email;
    private String phone;
    private String password;

    public StudentBean() {
    }

    public StudentBean(int sid, String name, String email, String phone, String password) {
        this.sid = sid;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "StudentBean [sid=" + sid + ", name=" + name + ", email=" + email
                + ", phone=" + phone + "]";
    }
}