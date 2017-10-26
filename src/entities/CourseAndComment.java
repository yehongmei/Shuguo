package entities;
import java.util.List;
/*菜和评论对象*/
public class CourseAndComment {
    private  Course course;
    private List<Comment> comments;

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
