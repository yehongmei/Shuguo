package entities;
public class Comment{
    private int comment_id;
    private Course course;
    private User user;
    private String comment_date;
    private String comment_content;
    public int getComment_id() {
        return comment_id;
    }
    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }
    public Course getCourse() {
        return course;
    }
    public void setCourse(Course course) {
        this.course = course;
    }
    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}
    public String getComment_date() {
        return comment_date;
    }
    public void setComment_date(String comment_date) {
        this.comment_date = comment_date;
    }
    public String getComment_content() {
        return comment_content;
    }
    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }
}
