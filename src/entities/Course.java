package entities;
import java.util.Date;
import java.util.List;
public class Course {
    private  int c_id;
    private  User user;
    private  int c_praise;
    private String c_name;
    private String c_firstImage;
    private String c_type;
    private String c_date;
    private  String c_operation;
    private List<Comment> comments;
    public int getC_id() {
        return c_id;
    }
    public void setC_id(int c_id) {
        this.c_id = c_id;
    }
    public int getC_praise() {
        return c_praise;
    }
    public void setC_praise(int c_praise) {
        this.c_praise = c_praise;
    }
    public String getC_name() {
        return c_name;
    }
    public void setC_name(String c_name) {
        this.c_name = c_name;
    }
    public String getC_type() {
        return c_type;
    }
    public void setC_type(String c_type) {
        this.c_type = c_type;
    }
    public String getC_date() {return c_date;}
    public void setC_date(String c_date) {this.c_date = c_date;}
    public String getC_firstImage() {return c_firstImage;}
    public void setC_firstImage(String c_firstImage) {this.c_firstImage = c_firstImage;}
    public String getC_operation() {
        return c_operation;
    }
    public void setC_operation(String c_operation) {
        this.c_operation = c_operation;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public List<Comment> getComments() {return comments;}
    public void setComments(List<Comment> comments) {this.comments = comments;}
}
