package entities;

import java.util.Date;

public class Comment{
    private int comment_id;
    private int c_id;
    private String u_reviewer;
    private String comment_date;
    private String comment_content;
    public int getC_id() {return c_id;}
    public void setC_id(int c_id) {this.c_id = c_id;}
    public String getU_reviewer() {return u_reviewer;}
    public void setU_reviewer(String u_reviewer) {this.u_reviewer = u_reviewer;}
    public int getComment_id() {
        return comment_id;
    }
    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }
    public String getComment_date() {return comment_date;}
    public void setComment_date(String comment_date) {this.comment_date = comment_date;}
    public String getComment_content() {
        return comment_content;
    }
    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }
}
