package controller;

import entities.Comment;
import entities.Course;
import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CommentService;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;
    @RequestMapping("/insertComment")
    @ResponseBody
    public  boolean insertComment(Comment comment, HttpSession session){
           /*获取当前时间*/
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
        String currentDate = sdf.format(date);
          /*将当前时间设置到评论表*/
        comment.setComment_date(currentDate);

        /*获取user对象*/
        User user = (User) session.getAttribute("user");
        User userComment = new User();
        userComment.setU_id(user.getU_id());
        userComment.setUsername(user.getUsername());
       comment.setUser(userComment);
        boolean c=commentService.insertComment(comment);
        return c;
    }
}
